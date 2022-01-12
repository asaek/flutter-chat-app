import 'package:flutter/material.dart';

class ImputTextLogin extends StatelessWidget {
  final String hintText;
  final Icon icon;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool isPassword;
  const ImputTextLogin({
    required this.hintText,
    required this.icon,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 60,
        alignment: Alignment.center,
        padding: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 6,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: TextFormField(
          autocorrect: false,
          keyboardType: TextInputType.emailAddress,
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: icon,
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
