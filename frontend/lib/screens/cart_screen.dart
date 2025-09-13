import 'package:flutter/cupertino.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(middle: Text('Cart'),
        ),
        child: Center(child: Text('Your cart is empty'),
        ),
    );
  }
}