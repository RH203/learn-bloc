import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.validator,
    required this.counterText,
    required this.labelText,
  }) : keyboardType = TextInputType.emailAddress;

  final TextEditingController controller;
  final String Function(String?) validator;
  final String counterText, labelText;
  final TextInputType keyboardType;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        counterText: widget.counterText,
        labelText: widget.labelText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
