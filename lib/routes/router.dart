import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';

import '../pages/pages.dart';

part 'route_name.dart';

// GoRouter configuration
final router = GoRouter(
  redirect: (context, state) {
    FirebaseAuth auth = FirebaseAuth.instance;
    if (auth.currentUser == null) {
      return "/login";
    } else {
      return null;
    }
  },
  // errorBuilder: (context, state) => const Page404(),
  routes: [
    GoRoute(
        path: '/',
        name: Routes.home,
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: 'pembelianbarang',
            name: Routes.pembelianbarang,
            builder: (context, state) => const PembelianBarangPage(),
          ),
          GoRoute(
            path: 'stokbarang',
            name: Routes.stokbarang,
            builder: (context, state) => const StokBarangPage(),
          ),
          GoRoute(
            path: 'transaksipenjualan',
            name: Routes.transaksipenjualan,
            builder: (context, state) => const TransaksiPenjualanPage(),
          ),
          GoRoute(
            path: 'laporankeuangan',
            name: Routes.laporankeuangan,
            builder: (context, state) => const LaporanKeuanganPage(),
          ),
          GoRoute(
            path: 'aruskas',
            name: Routes.aruskas,
            builder: (context, state) => const ArusKasPage(),
          ),
          GoRoute(
            path: 'pembukuan',
            name: Routes.pembukuan,
            builder: (context, state) => const PembukuanPage(),
          ),
        ]),
    GoRoute(
      path: '/login',
      name: Routes.login,
      builder: (context, state) => LoginPage(),
    ),
  ],
);
