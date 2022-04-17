import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_riverpod/core/route/route.dart';

import '../../components/forgot_password.dart';
import '../../components/rounded_button.dart';
import '../../components/rounded_input_field.dart';
import '../../components/rounded_password_field.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "ĐĂNG NHẬP TÀI KHOẢN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: ElevatedButton(
                  child: const Text(
                    'ĐĂNG NHẬP',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => {
                    // context.router.push(const PickAndDropRoute()),
                  },
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF6F35A5),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            const ForgotPassword(),
          ],
        ),
      ),
    );
  }
}
