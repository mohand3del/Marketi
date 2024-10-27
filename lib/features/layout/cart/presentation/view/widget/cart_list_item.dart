import 'package:flutter/material.dart';
import 'package:marketi/features/layout/cart/presentation/view/widget/cart_item.dart';

class CartListItem extends StatefulWidget {
  const CartListItem({super.key});

  @override
  _CartListItemState createState() => _CartListItemState();
}

class _CartListItemState extends State<CartListItem> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final int itemCount = 10;

  @override
  void initState() {
    super.initState();
    _addItems();
  }

  void _addItems() {
    Future.delayed(const Duration(milliseconds: 350), () {
      for (int i = 0; i < itemCount; i++) {
        Future.delayed(Duration(milliseconds: 100 * i), () {
          _listKey.currentState?.insertItem(i);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedList(
        key: _listKey,
        initialItemCount: 0,
        itemBuilder: (context, index, animation) {
          return _buildAnimatedItem(context, index, animation);
        },
      ),
    );
  }

  Widget _buildAnimatedItem(
      BuildContext context, int index, Animation<double> animation) {
    return FadeTransition(
      opacity: animation,
      child: const CartItem(),
    );
  }
}
