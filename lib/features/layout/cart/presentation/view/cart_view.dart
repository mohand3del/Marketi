import 'package:flutter/material.dart';
import 'package:marketi/core/constant/color.dart';
import 'package:marketi/features/layout/cart/presentation/view/widget/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CartViewBody(),
    );
  }
}
