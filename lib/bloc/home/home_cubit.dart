import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  void startSaldoStream() {
    emit(HomeLoading());
    _saldoStream().listen((saldo) {
      emit(HomeLoaded(saldo));
    }, onError: (e) {
      emit(HomeError(e.toString()));
    });
  }

  Stream<double> _saldoStream() {
    return firestore.collection("pembukuan").snapshots().map((snapshot) {
      double saldo = 0;
      for (var doc in snapshot.docs) {
        final data = doc.data();
        saldo += data['jumlah'];
      }
      return saldo;
    });
  }
}
