import 'package:ecom_bloc/features/cart/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final CartBloc cartBloc = CartBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Cart Page")));
  }
}
