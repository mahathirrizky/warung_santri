import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';
import '../models/stokbarang/stokbarang_model.dart';
import '../bloc/blocs.dart';
import '../bloc/stokbarang/stokbarang_event.dart';

class StokBarangPage extends StatefulWidget {
  const StokBarangPage({super.key});

  @override
  _StokBarangPageState createState() => _StokBarangPageState();
}

class _StokBarangPageState extends State<StokBarangPage> {
  late StokbarangBloc stokbarangBloc;

  @override
  void initState() {
    super.initState();
    stokbarangBloc = StokbarangBloc();
  }

  @override
  void dispose() {
    stokbarangBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1ECE8),
      appBar: AppBar(
        title: const Text(
          'Stok Barang',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF009672),
      ),
      body: StreamBuilder<QuerySnapshot<StokBarang>>(
        stream: stokbarangBloc.streamStokBarang(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          List<StokBarang> stokBarangs = [];
          List<String> ids = [];
          for (var element in snapshot.data!.docs) {
            StokBarang stokbarang = element.data();
            ids.add(element.id);
            stokBarangs.add(stokbarang);
          }

          if (stokBarangs.isEmpty) {
            return const Center(
              child: Text(
                'Stok Kosong',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            );
          }

          return ListView.builder(
            itemCount: stokBarangs.length,
            itemBuilder: (context, index) {
              StokBarang stokBarang = stokBarangs[index];
              String id = ids[index];
              return Card(
                child: ExpansionTile(
                  title: Text(stokBarang.nama),
                  subtitle: Text('Jumlah: ${stokBarang.jumlah}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          _showEditDialog(context, stokBarang, id);
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Hapus Stok Barang'),
                                content: const Text(
                                    'Apakah Anda yakin ingin menghapus barang ini?'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('Batal'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      stokbarangBloc
                                          .add(DeleteStokBarangEvent(id));
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('Hapus'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  children: [
                    ListTile(
                      title: Text('Deskripsi: ${stokBarang.deskripsi}'),
                    ),
                    ListTile(
                      title: Text('Harga Modal: ${stokBarang.hargaModal}'),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddDialog(context),
        backgroundColor: const Color(0xFF009672),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showAddDialog(BuildContext context) {
    final namaController = TextEditingController();
    final deskripsiController = TextEditingController();
    final barcodeController = TextEditingController(text: '');

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Tambah Stok Barang'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: namaController,
                decoration: const InputDecoration(labelText: 'Nama Barang'),
              ),
              TextField(
                controller: deskripsiController,
                decoration: const InputDecoration(labelText: 'Deskripsi'),
              ),
              TextField(
                controller: barcodeController,
                decoration: InputDecoration(
                  labelText: 'Barcode',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.qr_code_scanner),
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const SimpleBarcodeScannerPage(),
                        ),
                      );
                      if (result == "-1") {
                        barcodeController.text = '';
                      } else if (result is String) {
                        barcodeController.text = result;
                      } else {
                        barcodeController.text = '';
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Batal'),
            ),
            ValueListenableBuilder<TextEditingValue>(
              valueListenable: namaController,
              builder: (context, nama, child) {
                return ValueListenableBuilder<TextEditingValue>(
                  valueListenable: deskripsiController,
                  builder: (context, deskripsi, child) {
                    final isEnabled =
                        nama.text.isNotEmpty && deskripsi.text.isNotEmpty;
                    return TextButton(
                      onPressed: isEnabled
                          ? () {
                              final stokBarang = StokBarang(
                                nama: namaController.text,
                                jumlah: 0,
                                barcode: barcodeController.text,
                                deskripsi: deskripsiController.text,
                                hargaJual: 0.0,
                                hargaModal: 0.0,
                                createdAt: DateTime.now(),
                                updatedAt: DateTime.now(),
                              );
                              stokbarangBloc
                                  .add(AddStokBarangEvent(stokBarang));
                              Navigator.of(context).pop();
                            }
                          : null,
                      child: Text(
                        'Tambah',
                        style: TextStyle(
                          color: isEnabled
                              ? Theme.of(context).primaryColor
                              : Colors.grey,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        );
      },
    );
  }

  void _showEditDialog(BuildContext context, StokBarang stokBarang, String id) {
    final namaController = TextEditingController(text: stokBarang.nama);
    final deskripsiController =
        TextEditingController(text: stokBarang.deskripsi);
    final barcodeController = TextEditingController(text: stokBarang.barcode);
    final hargaModalController =
        TextEditingController(text: stokBarang.hargaModal.toString());
    final hargaJualController =
        TextEditingController(text: stokBarang.hargaJual.toString());
    final jumlahController =
        TextEditingController(text: stokBarang.jumlah.toString());

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Edit Stok Barang'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: namaController,
                decoration: const InputDecoration(labelText: 'Nama Barang'),
              ),
              TextField(
                controller: deskripsiController,
                decoration: const InputDecoration(labelText: 'Deskripsi'),
              ),
              TextField(
                controller: barcodeController,
                decoration: InputDecoration(
                  labelText: 'Barcode',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.qr_code_scanner),
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const SimpleBarcodeScannerPage(),
                        ),
                      );
                      if (result == "-1") {
                        barcodeController.text = barcodeController.text;
                      } else if (result is String) {
                        barcodeController.text = result;
                      } else {
                        barcodeController.text = barcodeController.text;
                      }
                    },
                  ),
                ),
              ),
              TextField(
                controller: hargaModalController,
                decoration: const InputDecoration(labelText: 'Harga Modal'),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              TextField(
                controller: hargaJualController,
                decoration: const InputDecoration(labelText: 'Harga Jual'),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              TextField(
                controller: jumlahController,
                decoration: const InputDecoration(labelText: 'Jumlah'),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                final updatedStokBarang = StokBarang(
                  nama: namaController.text,
                  jumlah: int.parse(jumlahController.text),
                  barcode: barcodeController.text,
                  deskripsi: deskripsiController.text,
                  hargaJual: double.parse(hargaJualController.text),
                  hargaModal: double.parse(hargaModalController.text),
                  createdAt: stokBarang.createdAt,
                  updatedAt: DateTime.now(),
                );
                stokbarangBloc
                    .add(UpdateStokBarangEvent(updatedStokBarang, id));
                Navigator.of(context).pop();
              },
              child: const Text('Simpan'),
            ),
          ],
        );
      },
    );
  }
}
