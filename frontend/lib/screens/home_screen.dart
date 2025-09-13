import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Home'),
      ),
        child: Center(child: Text('Welcome to CopyShop!'),
        ),
    );
  }
}