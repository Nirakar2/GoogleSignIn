import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class NavigateScreen extends StatelessWidget {
  final GoogleSignInAccount? user;
  const NavigateScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigate'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(user!.email),
            Text(user!.id),
            Text(user!.displayName.toString()),
            Image.network(user!.photoUrl.toString()),
            Text(user!.serverAuthCode.toString()),
          ],
        ),
      ),
    );
  }
}
