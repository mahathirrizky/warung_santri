import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';
import 'package:toastification/toastification.dart';

import '../../models/models.dart';
import '../bloc/blocs.dart';
import '../bloc/pembelianbarang/pembelianbarang_event.dart';
import '../bloc/pembelianbarang/pembelianbarang_state.dart';

class PembelianBarangPage extends StatefulWidget {
  const PembelianBarangPage({super.key});

  @override
  _PembelianBarangPageState createState() => _PembelianBarangPageState();
}

class _PembelianBarangPageState extends State<PembelianBarangPage> {
  final List<Barang> _barangList = [];
  double _totalHarga = 0.0; // Variabel untuk menyimpan total harga

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1ECE8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF009672),
        title: const Text(
          'Pembelian Barang',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: BlocListener<PembelianbarangBloc, PembelianbarangState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            success: () {
              // Clear _barangList after successful processing
              setState(() {
                _barangList.clear();
                _totalHarga =
                    0.0; // Reset total harga setelah pembelian berhasil
              });
              toastification.show(
                title: const Text('Pembelian success'),
                type: ToastificationType.success,
                style: ToastificationStyle.fillColored,
                autoCloseDuration: const Duration(seconds: 3),
              );
            },
            failure: (error) {
              toastification.show(
                title: Text('Pembelian Error: $error'),
                type: ToastificationType.error,
                style: ToastificationStyle.fillColored,
                autoCloseDuration: const Duration(seconds: 3),
              );
            },
          );
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: _BuildBarangDropdown(
                barangList: _barangList,
                addBarangToList: _addBarangToList,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: _barangList.isEmpty
                  ? const Center(child: Text('Belum ada barang ditambahkan'))
                  : ListView.builder(
                      itemCount: _barangList.length,
                      itemBuilder: (context, index) {
                        final barang = _barangList[index];
                        return ListTile(
                          title: Text(barang.nama),
                          subtitle: Text(
                              'Jumlah: ${barang.jumlah}, Harga: ${barang.harga}'),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              _removeBarang(index);
                            },
                          ),
                        );
                      },
                    ),
            ),
            Text(
              'Total: Rp. $_totalHarga', // Menampilkan total harga
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
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
                      borderRadius:
                          BorderRadius.circular(8.0), // Radius lebih kecil
                    ),
                  ),
                  onPressed: () {
                    _prosesPembelian(context);
                  },
                  child: const Text(
                    'Proses Pembelian Barang',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _prosesPembelian(BuildContext context) {
    if (_barangList.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Tambahkan barang terlebih dahulu'),
          duration: Duration(seconds: 2),
        ),
      );
      return;
    }

    final totalHarga = _calculateTotalHarga(); // Hitung total harga

    final pembelianBarang = PembelianBarang(
      totalHarga: totalHarga,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    BlocProvider.of<PembelianbarangBloc>(context).add(
      AddPembelianBarangEvent(pembelianBarang, _barangList),
    );
  }

  void _removeBarang(int index) {
    setState(() {
      _barangList.removeAt(index);
      _totalHarga =
          _calculateTotalHarga(); // Hitung ulang total harga setelah barang dihapus
    });
  }

  void _addBarangToList(Barang barang) {
    setState(() {
      _barangList.add(barang);
      _totalHarga =
          _calculateTotalHarga(); // Hitung ulang total harga setelah barang ditambahkan
    });
  }

  double _calculateTotalHarga() {
    // Fungsi untuk menghitung total harga berdasarkan barang-barang yang ada dalam _barangList
    return _barangList.fold(0.0,
        (currentSum, barang) => currentSum + (barang.jumlah * barang.harga));
  }
}

class _BuildBarangDropdown extends StatefulWidget {
  final List<Barang> barangList;
  final void Function(Barang) addBarangToList;

  const _BuildBarangDropdown({
    required this.barangList,
    required this.addBarangToList,
  });

  @override
  __BuildBarangDropdownState createState() => __BuildBarangDropdownState();
}

class __BuildBarangDropdownState extends State<_BuildBarangDropdown> {
  String? _selectedStokBarangId;
  String? _selectedBarangName;
  late PembelianbarangBloc pembelianbarangBloc;
  final TextEditingController _barcodeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    pembelianbarangBloc = PembelianbarangBloc();
  }

  @override
  void dispose() {
    pembelianbarangBloc.close();
    _barcodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<StokBarang>>(
      stream: pembelianbarangBloc.streamStokBarang(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return const Center(child: Text('Error loading data'));
        }
        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(child: Text('No items available'));
        }

        final stokBarangList = snapshot.data!.docs;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                DropdownSearch<String>(
                  popupProps: const PopupProps.dialog(
                    showSearchBox: true,
                    searchFieldProps: TextFieldProps(enabled: true),
                    showSelectedItems: true,
                  ),
                  dropdownDecoratorProps: const DropDownDecoratorProps(
                    dropdownSearchDecoration: InputDecoration(
                      labelText: "Pilih Barang",
                    ),
                  ),
                  items: stokBarangList.map((doc) => doc.data().nama).toList(),
                  onChanged: (value) {
                    final selectedStokBarang = stokBarangList.firstWhere(
                      (doc) => doc.data().nama == value,
                    );
                    setState(() {
                      _selectedStokBarangId = selectedStokBarang.id;
                      _selectedBarangName = selectedStokBarang.data().nama;
                      _showAddBarangDialog(context);
                    });
                  },
                  selectedItem: _selectedBarangName,
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: IconButton(
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
                        setState(() {
                          _selectedStokBarangId = null;
                          _selectedBarangName = null;
                        });
                      } else if (result is String) {
                        _barcodeController.text = result;
                        final selectedStokBarang = stokBarangList.firstWhere(
                          (doc) => doc.data().barcode == result,
                          orElse: () => stokBarangList.first,
                        );
                        setState(() {
                          _selectedStokBarangId = selectedStokBarang.id;
                          _selectedBarangName = selectedStokBarang.data().nama;
                          _showAddBarangDialog(context);
                        });
                      } else {
                        setState(() {
                          _selectedStokBarangId = null;
                          _selectedBarangName = null;
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  void _showAddBarangDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return _AddBarangDialog(
          stokBarangName: _selectedBarangName ?? '',
          stokBarangId: _selectedStokBarangId ?? '',
          addBarangToList: widget.addBarangToList,
        );
      },
    );
  }
}

class _AddBarangDialog extends StatefulWidget {
  final String stokBarangId;
  final String stokBarangName;
  final void Function(Barang) addBarangToList;

  const _AddBarangDialog({
    required this.stokBarangId,
    required this.stokBarangName,
    required this.addBarangToList,
  });

  @override
  __AddBarangDialogState createState() => __AddBarangDialogState();
}

class __AddBarangDialogState extends State<_AddBarangDialog> {
  int _jumlah = 1;
  double _harga = 0.0;
  bool _isValid = false; // Variabel untuk menyimpan status validasi

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Tambah Barang ke Pembelian'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Nama Barang: ${widget.stokBarangName}',
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Jumlah'),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                _jumlah = int.tryParse(value) ?? 1;
              });
              _validateInputs(); // Panggil validasi setiap kali nilai berubah
            },
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Harga Beli'),
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            onChanged: (value) {
              setState(() {
                _harga = double.tryParse(value) ?? 0.0;
              });
              _validateInputs(); // Panggil validasi setiap kali nilai berubah
            },
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
          onPressed: _isValid
              ? () => _tambahBarang()
              : null, // Aktifkan atau nonaktifkan tombol Tambah berdasarkan validasi
          child: const Text('Tambah'),
        ),
      ],
    );
  }

  void _validateInputs() {
    // Validasi input jumlah dan harga
    setState(() {
      _isValid = _jumlah > 0 && _harga > 0;
    });
  }

  void _tambahBarang() {
    final barang = Barang(
      idBarang: widget.stokBarangId,
      nama: widget.stokBarangName,
      jumlah: _jumlah,
      harga: _harga,
    );
    widget.addBarangToList(barang);
    Navigator.of(context).pop();
  }
}
