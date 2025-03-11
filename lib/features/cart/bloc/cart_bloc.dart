import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ecom_bloc/data/cart_items.dart';
import 'package:ecom_bloc/features/home/models/product_data_model.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitalEvent);
  }

  FutureOr<void> cartInitalEvent(
    CartInitialEvent event,
    Emitter<CartState> emit,
  ) {
    emit(CartSuccessState(cartItems: cartItems));
  }
}
