import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:warung_santri/bloc/blocs.dart'; // Import your BLoC files
import 'package:warung_santri/bloc/pembukuan/pembukuan_event.dart';
import 'package:warung_santri/bloc/pembukuan/pembukuan_state.dart';
import 'package:warung_santri/models/models.dart'; // Import your models

class PembukuanPage extends StatefulWidget {
  const PembukuanPage({Key? key}) : super(key: key);

  @override
  State<PembukuanPage> createState() => _PembukuanPageState();
}

class _PembukuanPageState extends State<PembukuanPage> {
  late DateTime _startDate;
  late DateTime _endDate;

  @override
  void initState() {
    super.initState();
    _startDate = DateTime.now().subtract(const Duration(days: 30));
    _endDate = DateTime.now();

    _loadData();
  }

  void _loadData() {
    BlocProvider.of<PembukuanBloc>(context).add(const GetPembukuan());
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      _startDate = args.value.startDate ?? _startDate;
      _endDate = args.value.endDate ?? _endDate;
    });
  }

  List<Pembukuan> _filterPembukuanByDateRange(
      List<Pembukuan> pembukuanList, DateTime startDate, DateTime endDate) {
    return pembukuanList.where((pembukuan) {
      return pembukuan.createdAt.isAfter(startDate) &&
          pembukuan.createdAt.isBefore(endDate.add(const Duration(days: 1)));
    }).toList();
  }

  String _formatRupiah(double number) {
    final formatCurrency =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);
    return formatCurrency.format(number);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pembukuan', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF009672),
        actions: [
          IconButton(
            onPressed: () {
              _showDateRangePickerDialog();
            },
            icon: const Icon(Icons.calendar_today, color: Colors.white),
          ),
        ],
      ),
      body: BlocBuilder<PembukuanBloc, PembukuanState>(
        builder: (context, state) {
          return _buildBody(context, state);
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context, PembukuanState state) {
    return state.when(
      initial: () => const Center(child: CircularProgressIndicator()),
      loading: () => const Center(child: CircularProgressIndicator()),
      success: (pembukuanList) {
        final filteredList =
            _filterPembukuanByDateRange(pembukuanList, _startDate, _endDate);
        return _buildSuccess(filteredList);
      },
      failure: (error) =>
          Center(child: Text('Failed to load pembukuan: $error')),
    );
  }

  Widget _buildSuccess(List<Pembukuan> pembukuanList) {
    Map<DateTime, List<Pembukuan>> groupedPembukuan = {};
    double totalJumlahKeseluruhan = 0.0;

    for (var pembukuan in pembukuanList) {
      final date = DateTime(pembukuan.createdAt.year, pembukuan.createdAt.month,
          pembukuan.createdAt.day);
      if (groupedPembukuan[date] == null) {
        groupedPembukuan[date] = [];
      }
      groupedPembukuan[date]!.add(pembukuan);
      totalJumlahKeseluruhan += pembukuan.jumlah;
    }

    List<DateTime> sortedDates = groupedPembukuan.keys.toList()
      ..sort((a, b) => b.compareTo(a));

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: sortedDates.length,
            itemBuilder: (context, index) {
              final date = sortedDates[index];
              final pembukuanListForDate = groupedPembukuan[date]!;
              double totalJumlahPerTanggal = pembukuanListForDate.fold(
                  0.0, (sum, item) => sum + item.jumlah);

              return Card(
                margin: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${date.day}-${date.month}-${date.year}',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ...pembukuanListForDate.map((pembukuan) {
                      return ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(pembukuan.keterangan),
                            Text(
                              _formatRupiah(pembukuan.jumlah),
                              style: TextStyle(
                                color: pembukuan.jumlah < 0
                                    ? Colors.red
                                    : Colors.green,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Total Jumlah: ${_formatRupiah(totalJumlahPerTanggal)}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: totalJumlahPerTanggal < 0
                              ? Colors.red
                              : Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Total Keseluruhan: ${_formatRupiah(totalJumlahKeseluruhan)}',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: totalJumlahKeseluruhan < 0 ? Colors.red : Colors.green,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF009672),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onPressed: () {
                // Gantikan dengan pemanggilan fungsi convertPDF di sini
                _convertToPdf(groupedPembukuan);
              },
              child: const Text(
                'Convert to PDF',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _showDateRangePickerDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Pilih Rentang Tanggal'),
          content: SizedBox(
            width: 300,
            height: 300,
            child: SfDateRangePicker(
              onSelectionChanged: _onDateRangeChanged,
              selectionMode: DateRangePickerSelectionMode.range,
              initialSelectedRange: PickerDateRange(_startDate, _endDate),
            ),
          ),
          actions: [
            TextButton(
              child: const Text('Batal'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                _loadData();
              },
            ),
          ],
        );
      },
    );
  }

  void _onDateRangeChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        _startDate = args.value.startDate;
        _endDate = args.value.endDate ?? _startDate;
        _loadData();
      }
    });
  }

  void _convertToPdf(Map<DateTime, List<Pembukuan>> groupedPembukuan) {
    BlocProvider.of<PembukuanBloc>(context).add(ConvertPDF(groupedPembukuan));
  }
}
