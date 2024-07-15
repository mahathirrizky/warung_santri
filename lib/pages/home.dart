import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:warung_santri/routes/router.dart';
import '../bloc/blocs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String _userRole = '';

  Future<void> _signOut() async {
    try {
      await _auth.signOut();
      if (mounted) {
        context.goNamed(Routes.home); // Navigate to the home route after logout
      }
    } catch (e) {
      // Handle sign-out error
    }
  }

  String formatRupiah(double amount) {
    return 'Rp ${amount.toStringAsFixed(0).replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}';
  }

  Future<void> _onRefresh() async {
    context.read<HomeCubit>().startSaldoStream();
  }

  @override
  void initState() {
    super.initState();
    _loadUserRole();
    context.read<HomeCubit>().startSaldoStream(); // Start streaming saldo
  }

  Future<void> _loadUserRole() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _userRole = prefs.getString('userRole') ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1ECE8),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: Stack(
                children: [
                  ClipRect(
                    child: Align(
                      alignment: Alignment.topCenter,
                      heightFactor: 0.8,
                      child: Image.asset(
                        "assets/images/header.jpg",
                        fit: BoxFit.cover,
                        height: 400,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 212,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 80),
                          Text(
                            'SISTEM KEUANGAN WARUNG SANTRI',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 180,
                    left: -5,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/logo.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is HomeLoading) {
                  return const CircularProgressIndicator();
                } else if (state is HomeLoaded) {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Saldo: ${formatRupiah(state.saldo)}",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                } else if (state is HomeError) {
                  return Text("Error: ${state.message}");
                } else {
                  return Container();
                }
              },
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: _onRefresh,
                child: GridView.count(
                  physics: const AlwaysScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.0,
                  padding: const EdgeInsets.all(20.0),
                  children: _buildMenuItems(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _signOut,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF009672),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'LOGOUT',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildMenuItems() {
    List<Widget> menuItems = [];

    if (_userRole == 'admin') {
      menuItems.addAll([
        createMenuButton(
          label: 'Pembelian Barang',
          iconPath: 'assets/images/PembelianBarang.png',
          onTap: () {
            context.goNamed(Routes.pembelianbarang);
          },
        ),
        createMenuButton(
          label: 'Stok Barang',
          iconPath: 'assets/images/StokBarang.png',
          onTap: () {
            context.goNamed(Routes.stokbarang);
          },
        ),
        createMenuButton(
          label: 'Transaksi Penjualan',
          iconPath: 'assets/images/TransaksiPenjualan.png',
          onTap: () {
            context.goNamed(Routes.transaksipenjualan);
          },
        ),
        createMenuButton(
          label: 'Laporan Keuangan',
          iconPath: 'assets/images/LaporanKeuangan.png',
          onTap: () {
            context.goNamed(Routes.laporankeuangan);
          },
        ),
        createMenuButton(
          label: 'Arus Kas',
          iconPath: 'assets/images/aruskas.png',
          onTap: () {
            context.goNamed(Routes.aruskas);
          },
        ),
      ]);
    }

    menuItems.add(
      createMenuButton(
        label: 'Pembukuan',
        iconPath: 'assets/images/pembukuan.png',
        onTap: () {
          context.goNamed(Routes.pembukuan);
        },
      ),
    );

    return menuItems;
  }

  Widget createMenuButton({
    required String label,
    required String iconPath,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            iconPath,
            height: 100,
            width: 100,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
