// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'text_field_container.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String>? onChanged;

  const RoundedPasswordField({Key? key, this.onChanged}) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    bool isPasswordValid(String password) => password.isNotEmpty;
    return TextFieldContainer(
      child: TextFormField(
        validator: (password) {
          if (isPasswordValid(password!)) {
            return null;
          } else {
            return 'Nhập mật khẩu';
          }
        },
        obscureText: _isObscure,
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
              _isObscure ? Icons.visibility : Icons.visibility_off,
              color: Colors.black,
            ),
            onPressed: () {
              setState(
                () {
                  _isObscure = !_isObscure;
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
