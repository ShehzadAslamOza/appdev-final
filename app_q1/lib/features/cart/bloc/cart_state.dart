part of 'cart_bloc.dart';

abstract class CartState {}

class CartInitial extends CartState {}

class CartLoadingState extends CartState {}

class CartSuccessState extends CartState {
  final counter = 0;
  final List<ProductModel> cartItems;
  CartSuccessState({
    required this.cartItems,
  });
}

class CartErrorState extends CartState {
  final String message;
  CartErrorState({
    required this.message,
  });
}
