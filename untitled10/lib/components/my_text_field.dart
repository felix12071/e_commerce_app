// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final IconData? icon;
  final IconData? sufIcon;
  final IconData? sufIcon2;
  final VoidCallback? onIconTap;
  final bool? initialObscureText; // New parameter for controlling initial state

  const MyTextField({
    Key? key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.icon,
    this.sufIcon,
    this.sufIcon2,
    this.onIconTap,
    this.initialObscureText,
  }) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late bool obscureText;

  @override
  void initState() {
    super.initState();
    obscureText = widget.initialObscureText ?? true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: widget.controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          fillColor: Colors.grey[100],
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, style: BorderStyle.solid),
          ),
          filled: true,
          labelText: widget.labelText,
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 20,fontWeight: FontWeight.normal),
          prefixIcon: Icon(widget.icon),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                obscureText = !obscureText;
              });
              if (widget.onIconTap != null) {
                widget.onIconTap!();
              }
            },
            child: Icon(obscureText ? widget.sufIcon : widget.sufIcon2),
          ),
        ),
      ),
    );
  }
}

