import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:document_file_save_plus/document_file_save_plus.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:toastification/toastification.dart';

import 'package:warung_santri/bloc/pembukuan/pembukuan_event.dart';
import 'package:warung_santri/bloc/pembukuan/pembukuan_state.dart';

import '../../models/models.dart';

// import '../../models/models.dart';

class PembukuanBloc extends Bloc<PembukuanEvent, PembukuanState> {
  final FirebaseStorage storage = FirebaseStorage.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  PembukuanBloc() : super(const PembukuanState.initial()) {
    on<PembukuanEvent>((event, emit) async {
      await event.when(
        getPembukuan: () => getPembukuan(emit),
        convertPDF: (pembukuan) => convertPDF(pembukuan, emit),
      );
    });
  }

  Future<void> getPembukuan(Emitter<PembukuanState> emit) async {
    emit(const PembukuanState.loading());
    try {
      final querySnapshot = await firestore.collection("pembukuan").get();
      final documents = querySnapshot.docs;
      final pembukuan =
          documents.map((doc) => Pembukuan.fromJson(doc.data())).toList();
      emit(PembukuanState.success(pembukuan));
    } catch (e) {
      emit(PembukuanState.failure(e.toString()));
    }
  }

  Future<void> convertPDF(Map<DateTime, List<Pembukuan>> pembukuan,
      Emitter<PembukuanState> emit) async {
    try {
      Map<String, List<Pembukuan>> groupedItems = {};

      for (var entry in pembukuan.entries) {
        String key = entry.key.toIso8601String().split('T')[0];
        if (!groupedItems.containsKey(key)) {
          groupedItems[key] = [];
        }
        groupedItems[key]!.addAll(entry.value);
      }

      // Sort grouped items by date (ascending)
      var sortedGroupedItems = groupedItems.entries.toList()
        ..sort(
            (a, b) => DateTime.parse(a.key).compareTo(DateTime.parse(b.key)));

      double totalProfit = 0.0;
      final pdf = pw.Document();
      final ByteData bytes = await rootBundle.load('assets/images/logo.png');
      final Uint8List byteList = bytes.buffer.asUint8List();
      final pw.ImageProvider logoImage = pw.MemoryImage(byteList);

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
                'Laporan Pembukuan Warung Santri',
                style:
                    pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold),
              ),
            ],
          ),
        ),
      );

      for (var entry in sortedGroupedItems) {
        String date = entry.key;
        List<Pembukuan> items = entry.value;

        double dailyTotal = 0.0;
        for (var item in items) {
          dailyTotal += item.jumlah;
        }

        pageWidgets.add(
          pw.Text(
            date,
            style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
          ),
        );

        for (var item in items) {
          totalProfit += item.jumlah;

          pageWidgets.add(
            pw.Container(
              padding: const pw.EdgeInsets.symmetric(vertical: 4),
              child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text(item.keterangan),
                  pw.Text(
                    formatCurrency(item.jumlah),
                    style: pw.TextStyle(
                      color: item.jumlah < 0 ? PdfColors.red : PdfColors.green,
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        pageWidgets.add(
          pw.Container(
            alignment: pw.Alignment.centerRight,
            child: pw.Text(
              'Total: ${formatCurrency(dailyTotal)}',
              style: pw.TextStyle(
                fontSize: 16,
                fontWeight: pw.FontWeight.bold,
                color: dailyTotal < 0 ? PdfColors.red : PdfColors.green,
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
            'Total Profit: ${formatCurrency(totalProfit)}',
            style: pw.TextStyle(
              fontSize: 18,
              fontWeight: pw.FontWeight.bold,
              color: totalProfit < 0 ? PdfColors.red : PdfColors.green,
            ),
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

      String startDate = pembukuan.keys
          .reduce((a, b) => a.isBefore(b) ? a : b)
          .toIso8601String()
          .split('T')[0];
      String endDate = pembukuan.keys
          .reduce((a, b) => a.isAfter(b) ? a : b)
          .toIso8601String()
          .split('T')[0];

      String fileName = 'Pembukuan_$startDate-$endDate.pdf';

      Uint8List data = await pdf.save();
      DocumentFileSavePlus().saveFile(data, fileName, 'application/pdf');

      toastification.show(
        title: const Text('Convert Pembukuan success'),
        type: ToastificationType.success,
        style: ToastificationStyle.fillColored,
        autoCloseDuration: const Duration(seconds: 3),
      );
    } catch (e) {
      emit(PembukuanState.failure(e.toString()));
    }
  }

  String formatCurrency(double amount) {
    final formatCurrency =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);
    return formatCurrency.format(amount);
  }
}
