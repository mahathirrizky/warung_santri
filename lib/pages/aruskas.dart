import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:toastification/toastification.dart';
import 'package:warung_santri/bloc/aruskas/aruskas_bloc.dart';
import 'package:warung_santri/bloc/aruskas/aruskas_event.dart';
import 'package:warung_santri/bloc/aruskas/aruskas_state.dart';
import 'package:warung_santri/models/models.dart';

class ArusKasPage extends StatelessWidget {
  const ArusKasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AruskasBloc(),
      child: const _ArusKasPageContent(),
    );
  }
}

class _ArusKasPageContent extends StatefulWidget {
  const _ArusKasPageContent({Key? key}) : super(key: key);

  @override
  __ArusKasPageContentState createState() => __ArusKasPageContentState();
}

class __ArusKasPageContentState extends State<_ArusKasPageContent> {
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
    BlocProvider.of<AruskasBloc>(context)
        .add(GetRangeArusKasEvent(_startDate, _endDate));
  }

  Future<void> _onRefresh() async {
    BlocProvider.of<AruskasBloc>(context)
        .add(GetRangeArusKasEvent(_startDate, _endDate));
  }

  String formatCurrency(double amount) {
    final formatCurrency =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);
    return formatCurrency.format(amount);
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

  void _showEditArusKasDialog(
      BuildContext context, String arusKasId, ArusKas arusKas) {
    final formKey = GlobalKey<FormState>();
    String jenisTransaksi = arusKas.jenisTransaksi;
    double jumlah = arusKas.jumlah;
    String keterangan = arusKas.keterangan;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Edit Arus Kas'),
          content: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  DropdownButtonFormField<String>(
                    value: jenisTransaksi,
                    decoration:
                        const InputDecoration(labelText: 'Jenis Transaksi'),
                    items: ['Pemasukan', 'Pengeluaran']
                        .map((label) => DropdownMenuItem(
                              value: label,
                              child: Text(label),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        jenisTransaksi = value!;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Jenis transaksi tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    initialValue: jumlah.toString(),
                    decoration: const InputDecoration(labelText: 'Jumlah'),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      setState(() {
                        jumlah = double.tryParse(value) ?? 0;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Jumlah tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    initialValue: keterangan,
                    decoration: const InputDecoration(labelText: 'Keterangan'),
                    onChanged: (value) {
                      setState(() {
                        keterangan = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Batal'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Text('Simpan'),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  final editedArusKas = ArusKas(
                    jenisTransaksi: jenisTransaksi,
                    jumlah: jumlah,
                    createdAt: arusKas.createdAt,
                    keterangan: keterangan,
                  );
                  BlocProvider.of<AruskasBloc>(context)
                      .add(UpdateArusKasEvent(editedArusKas, arusKasId));
                  _onRefresh();
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }

  void _confirmDeleteArusKas(BuildContext context, String arusKasId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Konfirmasi Hapus'),
          content:
              const Text('Apakah Anda yakin ingin menghapus arus kas ini?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Batal'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text('Hapus'),
              onPressed: () {
                BlocProvider.of<AruskasBloc>(context)
                    .add(DeleteArusKasEvent(arusKasId));
                _onRefresh();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1ECE8),
      appBar: AppBar(
        title: const Text(
          'Arus Kas',
          style: TextStyle(color: Colors.white),
        ),
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
      body: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: SizedBox(
          //     width: double.infinity,
          //     child: ElevatedButton(
          //       style: ElevatedButton.styleFrom(
          //         backgroundColor: const Color(0xFF009672),
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(8.0),
          //         ),
          //       ),
          //       onPressed: () => _showDateRangePickerDialog(),
          //       child: const Text(
          //         'Pilih Tanggal',
          //         style: TextStyle(color: Colors.white),
          //       ),
          //     ),
          //   ),
          // ),
          Expanded(
            child: BlocConsumer<AruskasBloc, AruskasState>(
              listener: (context, state) {
                state.maybeWhen(
                  failure: (error) {
                    toastification.show(
                      title: Text('Error: $error'),
                      type: ToastificationType.error,
                      style: ToastificationStyle.fillColored,
                      autoCloseDuration: const Duration(seconds: 3),
                    );
                  },
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return state.maybeMap(
                  initial: (_) =>
                      const Center(child: CircularProgressIndicator()),
                  loading: (_) =>
                      const Center(child: CircularProgressIndicator()),
                  success: (successState) {
                    final arusKasList = successState.arusKas;
                    return ListView.builder(
                      itemCount: arusKasList.length,
                      itemBuilder: (context, index) {
                        final arusKas = arusKasList[index];
                        return Card(
                          margin: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  arusKas.jenisTransaksi,
                                  style: TextStyle(
                                    color: arusKas.jenisTransaksi == 'Pemasukan'
                                        ? Colors.green
                                        : Colors.red,
                                  ),
                                ),
                                Text(
                                  formatCurrency(arusKas.jumlah),
                                  style: TextStyle(
                                    color: arusKas.jenisTransaksi == 'Pemasukan'
                                        ? Colors.green
                                        : Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            subtitle: Text(arusKas.keterangan),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () {
                                    _showEditArusKasDialog(
                                        context, arusKas.id!, arusKas);
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  color: Colors.red,
                                  onPressed: () {
                                    _confirmDeleteArusKas(context, arusKas.id!);
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  orElse: () => Container(),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddArusKasDialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showAddArusKasDialog(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    String jenisTransaksi = 'Pemasukan';
    double jumlah = 0;
    String keterangan = '';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Tambah Arus Kas'),
          content: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  DropdownButtonFormField<String>(
                    value: jenisTransaksi,
                    decoration:
                        const InputDecoration(labelText: 'Jenis Transaksi'),
                    items: ['Pemasukan', 'Pengeluaran']
                        .map((label) => DropdownMenuItem(
                              value: label,
                              child: Text(label),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        jenisTransaksi = value!;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Jenis transaksi tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Jumlah'),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      setState(() {
                        jumlah = double.tryParse(value) ?? 0;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Jumlah tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Keterangan'),
                    onChanged: (value) {
                      setState(() {
                        keterangan = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Batal'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Text('Simpan'),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  final arusKas = ArusKas(
                    jenisTransaksi: jenisTransaksi,
                    jumlah: jumlah,
                    createdAt: DateTime.now(),
                    keterangan: keterangan,
                  );
                  BlocProvider.of<AruskasBloc>(context)
                      .add(AddArusKasEvent(arusKas));
                  _onRefresh();
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }
}
