import 'package:flutter/cupertino.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(middle: Text('Profile'),
        ),
        child: Center(child: Text('User Profile Page'),
        ),
    );
  }
}