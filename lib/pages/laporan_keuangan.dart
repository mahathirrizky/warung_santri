import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:permission_handler/permission_handler.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:warung_santri/bloc/laporankeuangan/laporankeuangan_bloc.dart';
import 'package:warung_santri/bloc/laporankeuangan/laporankeuangan_event.dart';
import 'package:warung_santri/bloc/laporankeuangan/laporankeuangan_state.dart';
import 'package:warung_santri/models/models.dart';
import 'package:intl/intl.dart';

class LaporanKeuanganPage extends StatefulWidget {
  const LaporanKeuanganPage({Key? key}) : super(key: key);

  @override
  _LaporanKeuanganPageState createState() => _LaporanKeuanganPageState();
}

class _LaporanKeuanganPageState extends State<LaporanKeuanganPage> {
  late LaporankeuanganBloc _laporankeuanganBloc;
  DateTimeRange? _selectedDateRange;
  double totalProfit = 0.0;

  @override
  void initState() {
    super.initState();
    _laporankeuanganBloc = BlocProvider.of<LaporankeuanganBloc>(context);
    DateTime today = DateTime.now();
    DateTime oneWeekAgo = today.subtract(const Duration(days: 7));
    _selectedDateRange = DateTimeRange(start: oneWeekAgo, end: today);
    _fetchData(_selectedDateRange!.start, _selectedDateRange!.end);
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      setState(() {
        _selectedDateRange = DateTimeRange(
          start: (args.value as PickerDateRange).startDate!,
          end: (args.value as PickerDateRange).endDate ??
              (args.value as PickerDateRange).startDate!,
        );
      });
      _fetchData(_selectedDateRange!.start, _selectedDateRange!.end);
    }
  }

  void _showDatePickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Pilih Tanggal'),
          content: SizedBox(
            height: 300,
            width: 300,
            child: SfDateRangePicker(
              selectionMode: DateRangePickerSelectionMode.range,
              initialSelectedRange: PickerDateRange(
                _selectedDateRange?.start,
                _selectedDateRange?.end,
              ),
              onSelectionChanged: _onSelectionChanged,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _fetchData(DateTime startDate, DateTime endDate) {
    // Set endDate to the last time of the day
    endDate =
        DateTime(endDate.year, endDate.month, endDate.day, 23, 59, 59, 999);

    _laporankeuanganBloc.add(
      LaporankeuanganEvent.getRangeLaporanKeuangan(startDate, endDate),
    );
  }

  void _onConvertButtonPressed(List<LaporanKeuangan> laporanKeuangan) {
    _laporankeuanganBloc.add(
      LaporankeuanganEvent.convertPDF(laporanKeuangan),
    );
  }

  String formatCurrency(double amount) {
    final formatCurrency =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);
    return formatCurrency.format(amount);
  }

  String formatTime(DateTime dateTime) {
    final DateFormat timeFormat = DateFormat('HH:mm');
    return timeFormat.format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1ECE8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF009672),
        title: const Text(
          'Laporan Keuangan',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _showDatePickerDialog(context);
            },
            icon: const Icon(Icons.calendar_today, color: Colors.white),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: SizedBox(
            //     width: double.infinity,
            //     child: ElevatedButton(
            //       style: ElevatedButton.styleFrom(
            //         backgroundColor: const Color(0xFF009672),
            //         shape: RoundedRectangleBorder(
            //           borderRadius:
            //               BorderRadius.circular(8.0), // Radius lebih kecil
            //         ),
            //       ),
            //       onPressed: () => _showDatePickerDialog(context),
            //       child: const Text(
            //         'Pilih Tanggal',
            //         style: TextStyle(color: Colors.white),
            //       ),
            //     ),
            //   ),
            // ),
            Expanded(
              child: BlocBuilder<LaporankeuanganBloc, LaporankeuanganState>(
                builder: (context, state) {
                  return state.when(
                    initial: () =>
                        const Center(child: CircularProgressIndicator()),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    success: (List<LaporanKeuangan> laporanKeuangan) {
                      // Group items by date
                      Map<String, List<LaporanKeuangan>> groupedItems = {};
                      for (var item in laporanKeuangan) {
                        String key =
                            item.createdAt.toIso8601String().split('T')[0];
                        if (!groupedItems.containsKey(key)) {
                          groupedItems[key] = [];
                        }
                        groupedItems[key]!.add(item);
                      }
                      groupedItems.forEach((key, value) {
                        value
                            .sort((a, b) => b.createdAt.compareTo(a.createdAt));
                        // Change 'b.createdAt.compareTo(a.createdAt)' to 'a.createdAt.compareTo(b.createdAt)' for ascending order
                      });

                      // Balik urutan data
                      List<String> reversedKeys =
                          groupedItems.keys.toList().reversed.toList();

                      // Calculate total profit for selected date range
                      totalProfit = 0.0;
                      for (var entry in groupedItems.entries) {
                        List<LaporanKeuangan> items = entry.value;
                        double dailyIncome = items
                            .where((item) => item.type == 'penjualan')
                            .fold(
                                0.0,
                                (sum, item) =>
                                    sum +
                                    (item.item as PenjualanBarang).totalHarga);
                        double dailyExpenses = items
                            .where((item) => item.type == 'pembelian')
                            .fold(
                                0.0,
                                (sum, item) =>
                                    sum +
                                    (item.item as PembelianBarang).totalHarga);
                        double dailyProfit = dailyIncome - dailyExpenses;
                        totalProfit += dailyProfit;
                      }

                      // Determine text color based on total profit
                      Color totalProfitColor =
                          totalProfit >= 0 ? Colors.black : Colors.red;

                      // Create list view with grouped data
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Total Laba: ${formatCurrency(totalProfit)}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:
                                    totalProfitColor, // Set color based on total profit
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: reversedKeys.length,
                              itemBuilder: (context, index) {
                                String dateKey = reversedKeys[index];
                                List<LaporanKeuangan> items =
                                    groupedItems[dateKey]!;

                                // Calculate daily profit
                                double dailyIncome = items
                                    .where((item) => item.type == 'penjualan')
                                    .fold(
                                        0.0,
                                        (sum, item) =>
                                            sum +
                                            (item.item as PenjualanBarang)
                                                .totalHarga);
                                double dailyExpenses = items
                                    .where((item) => item.type == 'pembelian')
                                    .fold(
                                        0.0,
                                        (sum, item) =>
                                            sum +
                                            (item.item as PembelianBarang)
                                                .totalHarga);
                                double dailyProfit =
                                    dailyIncome - dailyExpenses;

                                // Determine text color based on profit
                                Color profitColor = dailyProfit >= 0
                                    ? Colors.green
                                    : Colors.red;

                                return Card(
                                  margin: const EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Text(
                                          'Tanggal: $dateKey',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      ListView.builder(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: items.length,
                                        itemBuilder: (context, index) {
                                          LaporanKeuangan item = items[index];
                                          Widget itemWidget;
                                          String formattedTime =
                                              formatTime(item.createdAt);

                                          if (item.type == 'penjualan') {
                                            // Tampilkan data penjualan
                                            PenjualanBarang penjualanBarang =
                                                item.item as PenjualanBarang;
                                            itemWidget = ListTile(
                                              title: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(item.type),
                                                  Text(formattedTime),
                                                ],
                                              ),
                                              subtitle: Text(
                                                'Total: ${formatCurrency(penjualanBarang.totalHarga)}',
                                              ),
                                            );
                                          } else if (item.type == 'pembelian') {
                                            // Tampilkan data pembelian
                                            PembelianBarang pembelianBarang =
                                                item.item as PembelianBarang;
                                            itemWidget = ListTile(
                                              title: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(item.type),
                                                  Text(formattedTime),
                                                ],
                                              ),
                                              subtitle: Text(
                                                'Total: ${formatCurrency(pembelianBarang.totalHarga)}',
                                              ),
                                            );
                                          } else {
                                            itemWidget = ListTile(
                                              title: Text(
                                                  'Unknown Type ($formattedTime)'),
                                              subtitle:
                                                  Text(item.item.toString()),
                                            );
                                          }
                                          return itemWidget;
                                        },
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Text(
                                          'Laba: ${formatCurrency(dailyProfit)}',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: profitColor,
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
                            child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF009672),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Radius lebih kecil
                                  ),
                                ),
                                onPressed: () =>
                                    _onConvertButtonPressed(laporanKeuangan),
                                child: const Text(
                                  'Convert',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    failure: (error) =>
                        Center(child: Text('Gagal memuat data: $error')),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
