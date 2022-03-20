import 'package:flutter/material.dart';

import '../utils/utils.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textFieldController;
  final String hintText;
  final IconData prefixIcon;
  const AppTextField(
      {Key? key,
      required this.textFieldController,
      required this.hintText,
      required this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: Dimensions.height20,
        right: Dimensions.height20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimensions.radius30),
        boxShadow: [
          BoxShadow(
            offset: const Offset(1, 10),
            blurRadius: 10,
            spreadRadius: 7,
            color: Colors.grey.withOpacity(0.2),
          )
        ],
      ),
      child: TextField(
        controller: textFieldController,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(prefixIcon, color: AppColors.yellowColor),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius30),
            borderSide: const BorderSide(color: Colors.white, width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius30),
            borderSide: const BorderSide(color: Colors.white, width: 1.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius30),
          ),
        ),
      ),
    );
  }
}
