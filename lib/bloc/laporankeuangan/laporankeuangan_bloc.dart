import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:document_file_save_plus/document_file_save_plus.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';

import 'package:toastification/toastification.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../models/models.dart';
import 'laporankeuangan_event.dart';
import 'laporankeuangan_state.dart';

class LaporankeuanganBloc
    extends Bloc<LaporankeuanganEvent, LaporankeuanganState> {
  final FirebaseStorage storage = FirebaseStorage.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  LaporankeuanganBloc() : super(const LaporankeuanganState.initial()) {
    on<LaporankeuanganEvent>((event, emit) async {
      await event.when(
        getRangeLaporanKeuangan: (startDate, endDate) =>
            getRangeLaporanKeuangan(startDate, endDate, emit),
        convertPDF: (laporanKeuangan) => convertPDF(laporanKeuangan, emit),
      );
    });
  }

  Future<void> getRangeLaporanKeuangan(DateTime startDate, DateTime endDate,
      Emitter<LaporankeuanganState> emit) async {
    emit(const LaporankeuanganState.loading());
    try {
      endDate =
          DateTime(endDate.year, endDate.month, endDate.day, 23, 59, 59, 999);

      // Ubah startDate dan endDate ke format string yang sesuai untuk Firestore
      String formattedStartDate = startDate.toIso8601String();
      String formattedEndDate = endDate.toIso8601String();

      final querySnapshotPenjualan = await firestore
          .collection("penjualan")
          .where("createdAt", isGreaterThanOrEqualTo: formattedStartDate)
          .where("createdAt", isLessThanOrEqualTo: formattedEndDate)
          .get();
      final documentsPenjualan = querySnapshotPenjualan.docs;
      final penjualan = documentsPenjualan
          .map((doc) => PenjualanBarang.fromJson(doc.data()))
          .toList();

      final querySnapshotPembelian = await firestore
          .collection("pembelian")
          .where("createdAt", isGreaterThanOrEqualTo: formattedStartDate)
          .where("createdAt", isLessThanOrEqualTo: formattedEndDate)
          .get();
      final documentsPembelian = querySnapshotPembelian.docs;
      final pembelian = documentsPembelian
          .map((doc) => PembelianBarang.fromJson(doc.data()))
          .toList();

      // Gabungkan dan urutkan
      final laporanKeuanganItems = [
        ...penjualan.map((p) => LaporanKeuangan(
            createdAt: p.createdAt, type: 'penjualan', item: p)),
        ...pembelian.map((p) => LaporanKeuangan(
            createdAt: p.createdAt, type: 'pembelian', item: p)),
      ];

      laporanKeuanganItems.sort((a, b) => a.createdAt.compareTo(b.createdAt));
      emit(LaporankeuanganState.success(laporanKeuanganItems));
    } catch (e) {
      toastification.show(
        title: Text('Error: $e'),
        type: ToastificationType.error,
        style: ToastificationStyle.fillColored,
        autoCloseDuration: const Duration(seconds: 3),
      );
    }
  }

  Future<void> convertPDF(List<LaporanKeuangan> laporanKeuangan,
      Emitter<LaporankeuanganState> emit) async {
    emit(const LaporankeuanganState.loading());
    try {
      // Group items by date and calculate profit per date
      Map<String, List<LaporanKeuangan>> groupedItems = {};
      for (var item in laporanKeuangan) {
        String key = item.createdAt.toIso8601String().split('T')[0];
        if (!groupedItems.containsKey(key)) {
          groupedItems[key] = [];
        }
        groupedItems[key]!.add(item);
      }

      // Calculate total profit
      double totalProfit = 0.0;

      // Create a PDF document
      final pdf = pw.Document();
      final ByteData bytes = await rootBundle.load('assets/images/logo.png');
      final Uint8List byteList = bytes.buffer.asUint8List();
      final pw.ImageProvider logoImage = pw.MemoryImage(byteList);

      // Prepare widgets for the PDF
      List<pw.Widget> pageWidgets = [];

      pageWidgets.add(
        pw.Container(
          padding: const pw.EdgeInsets.only(bottom: 20),
          decoration: const pw.BoxDecoration(
            border: pw.Border(
              bottom: pw.BorderSide(width: 2, color: PdfColors.grey),
            ),
          ),
          child: pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.start,
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              pw.Image(logoImage, width: 50, height: 50),
              pw.SizedBox(width: 16),
              pw.Text(
                'Laporan Keuangan Warung Santri',
                style:
                    pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold),
              ),
            ],
          ),
        ),
      );

      for (var entry in groupedItems.entries) {
        final date = entry.key;
        final items = entry.value;

        double dailyProfit = 0.0;
        for (var item in items) {
          if (item.type == 'penjualan') {
            dailyProfit += (item.item as PenjualanBarang).totalHarga;
          } else if (item.type == 'pembelian') {
            dailyProfit -= (item.item as PembelianBarang).totalHarga;
          }
        }
        totalProfit += dailyProfit;

        pageWidgets.add(
          pw.Text(
            'Tanggal: $date',
            style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
          ),
        );

        for (var item in items) {
          final formattedTime = DateFormat('HH:mm').format(item.createdAt);
          pageWidgets.add(
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Text('Jam: $formattedTime'),
                    if (item.type == 'penjualan')
                      pw.Text(
                          'Total Penjualan: ${formatCurrency((item.item as PenjualanBarang).totalHarga)}',
                          style: const pw.TextStyle(color: PdfColors.green)),
                    if (item.type == 'pembelian')
                      pw.Text(
                          'Total Pembelian: ${formatCurrency((item.item as PembelianBarang).totalHarga)}',
                          style: const pw.TextStyle(color: PdfColors.red)),
                  ],
                ),
              ],
            ),
          );
        }

        pageWidgets.add(
          pw.Container(
            alignment: pw.Alignment.centerRight,
            child: pw.Text(
              'Laba Hari Ini: ${formatCurrency(dailyProfit)}',
              style: pw.TextStyle(
                fontSize: 16,
                fontWeight: pw.FontWeight.bold,
                color: dailyProfit < 0 ? PdfColors.red : PdfColors.green,
              ),
            ),
          ),
        );

        pageWidgets.add(pw.Divider());
      }

      pageWidgets.add(pw.Divider());

      pageWidgets.add(
        pw.Container(
          alignment: pw.Alignment.centerRight,
          child: pw.Text(
            'Total Laba Keseluruhan: ${formatCurrency(totalProfit)}',
            style: pw.TextStyle(
                color: totalProfit < 0 ? PdfColors.red : PdfColors.green,
                fontSize: 18,
                fontWeight: pw.FontWeight.bold),
          ),
        ),
      );

      const int itemsPerPage = 40; // Adjust this number to fit your page size
      for (var i = 0; i < pageWidgets.length; i += itemsPerPage) {
        pdf.addPage(
          pw.Page(
            pageFormat: const PdfPageFormat(
                210 * PdfPageFormat.mm, 330 * PdfPageFormat.mm),
            build: (pw.Context context) {
              return pw.Column(
                children: pageWidgets.sublist(
                    i,
                    i + itemsPerPage > pageWidgets.length
                        ? pageWidgets.length
                        : i + itemsPerPage),
              );
            },
          ),
        );
      }

      // Get the date range for the file name
      String startDate = laporanKeuangan
          .map((item) => item.createdAt)
          .reduce((a, b) => a.isBefore(b) ? a : b)
          .toIso8601String()
          .split('T')[0];
      String endDate = laporanKeuangan
          .map((item) => item.createdAt)
          .reduce((a, b) => a.isAfter(b) ? a : b)
          .toIso8601String()
          .split('T')[0];

      // Generate file name with date range
      String fileName = 'Laporan_Keuangan_$startDate-$endDate.pdf';

      Uint8List data = await pdf.save();
      DocumentFileSavePlus().saveFile(data, fileName, 'application/pdf');

      emit(LaporankeuanganState.success(laporanKeuangan));

      toastification.show(
        title: const Text('Convert Laporan Keuangan success'),
        type: ToastificationType.success,
        style: ToastificationStyle.fillColored,
        autoCloseDuration: const Duration(seconds: 3),
      );
    } catch (e) {
      emit(LaporankeuanganState.failure(e.toString()));

      toastification.show(
        title: const Text('Convert failed'),
        type: ToastificationType.error,
        style: ToastificationStyle.fillColored,
        autoCloseDuration: const Duration(seconds: 3),
      );
    }
  }

  String formatCurrency(double amount) {
    final formatCurrency =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);
    return formatCurrency.format(amount);
  }
}
