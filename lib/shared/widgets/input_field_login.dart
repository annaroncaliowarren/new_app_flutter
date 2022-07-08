
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputFieldLogin extends StatefulWidget {
    
  String label;
  IconData prefixIcon;
  dynamic controller;
  bool obscureText;

  InputFieldLogin({
    Key? key,
    required this.label,
    required this.prefixIcon,
    required this.controller,
    required this.obscureText,
  }) : super(key: key);

  @override
  State<InputFieldLogin> createState() => _InputFieldLoginState();
}

class _InputFieldLoginState extends State<InputFieldLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText ? true : false,
        obscuringCharacter: '*',
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          labelText: widget.label,
          prefixIcon: Icon(
            widget.prefixIcon,
            color: Colors.black,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
