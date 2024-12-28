import 'dart:async';

import 'package:app_q1/features/cart/model/product_model.dart';
import 'package:app_q1/features/cart/repo/cart_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
  }

  Future<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) async {
    try {
      emit(CartLoadingState());
      final cartItemsStream = CartRepository.getTodos();

      emit(CartLoadingState());
      await emit.forEach<List<ProductModel>>(
        cartItemsStream,
        onData: (cartItems) => CartSuccessState(cartItems: cartItems),
        onError: (_, __) => CartErrorState(message: "Failed to load todos."),
      );
    } catch (e) {
      emit(CartErrorState(message: e.toString()));
    }
  }
}
