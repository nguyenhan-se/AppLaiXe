// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/route/route.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            context.router.push(const ForgotPasswordRoute());
          },
          child: const Text(
            "Quên mật khẩu ? ",
            style: TextStyle(color: Color(0xFF6F35A5)),
          ),
        ),
      ],
    );
  }
}
