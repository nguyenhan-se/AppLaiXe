// Flutter imports:
import 'package:flutter/material.dart';

class FloatTextField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final TextInputType keyboardType;
  final int maxLength;
  final String hintText;
  final String suffixText;
  final bool enabled;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final Widget? suffixIcon;
  final int? maxLines;
  final bool readOnly;
  final String? errorText;
  final String? initialValue;

  const FloatTextField({
    Key? key,
    required this.labelText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.maxLength = 100,
    this.hintText = '',
    this.suffixText = '',
    this.enabled = true,
    this.controller,
    this.onChanged,
    this.suffixIcon,
    this.maxLines = 1,
    this.readOnly = false,
    this.errorText,
    this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      initialValue: initialValue,
      enabled: enabled,
      readOnly: readOnly,
      maxLines: maxLines,
      obscureText: obscureText,
      keyboardType: keyboardType,
      maxLength: maxLength,
      decoration: InputDecoration(
        labelText: labelText,
        errorText: errorText,
        counterText: "",
        hintText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        labelStyle: theme.textTheme.bodyText2?.copyWith(color: Colors.blue),
        isDense: true,
        contentPadding: const EdgeInsets.all(10),
      ),
      controller: controller,
      onChanged: onChanged,
    );
  }
}
