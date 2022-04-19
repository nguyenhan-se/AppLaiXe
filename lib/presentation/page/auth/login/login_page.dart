// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Body(),
        ),
      ),
    );
  }
}
