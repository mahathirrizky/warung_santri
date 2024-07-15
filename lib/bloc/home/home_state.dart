part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final double saldo;

  HomeLoaded(this.saldo);
}

class HomeError extends HomeState {
  final String message;

  HomeError( this.message);
}
