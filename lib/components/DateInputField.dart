import 'package:flutter/material.dart';

class DateInputField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;

  const DateInputField({
    super.key,
    required this.hint,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.black),
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFF15998E)),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      keyboardType: TextInputType.number,
    );
  }
}