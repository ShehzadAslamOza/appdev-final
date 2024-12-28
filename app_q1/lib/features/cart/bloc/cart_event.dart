part of 'cart_bloc.dart';

abstract class CartEvent {}

class CartInitialEvent extends CartEvent {}

class IncrementEvent extends CartEvent {}

class DecrementEvent extends CartEvent {}
