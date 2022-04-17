import 'package:flutter/material.dart';

import 'text_field_container.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String>? onChanged;

  const RoundedPasswordField({Key? key, this.onChanged}) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  @override
  Widget build(BuildContext context) {
    bool isPasswordValid(String password) => password.isNotEmpty;
    bool _passwordVisible = false;

    return TextFieldContainer(
      child: TextFormField(
        validator: (password) {
          if (isPasswordValid(password!)) {
            return null;
          } else {
            return 'Nhập mật khẩu';
          }
        },
        obscureText: _passwordVisible,
        onChanged: widget.onChanged,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          hintText: "Mật Khẩu",
          icon: const Icon(
            Icons.lock,
            color: Colors.black,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: Colors.black,
            ),
            onPressed: () {
              setState(
                () {
                  _passwordVisible = !_passwordVisible;
                },
              );
            },
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
