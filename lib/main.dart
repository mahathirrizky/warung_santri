import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:toastification/toastification.dart';
import 'package:warung_santri/routes/router.dart';

import 'bloc/blocs.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(),
          ),
          BlocProvider<StokbarangBloc>(
            create: (context) => StokbarangBloc(),
          ),
          BlocProvider<PembelianbarangBloc>(
            create: (context) => PembelianbarangBloc(),
          ),
          BlocProvider<PenjualanbarangBloc>(
            create: (context) => PenjualanbarangBloc(),
          ),
          BlocProvider<LaporankeuanganBloc>(
            create: (context) => LaporankeuanganBloc(),
          ),
          BlocProvider<AruskasBloc>(
            create: (context) => AruskasBloc(),
          ),
          BlocProvider<HomeCubit>(
            create: (context) => HomeCubit(),
          ),
          BlocProvider<PembukuanBloc>(
            create: (context) => PembukuanBloc(),
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
        ),
      ),
    );
  }
}
