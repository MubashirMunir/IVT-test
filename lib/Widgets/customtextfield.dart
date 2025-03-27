import 'package:flutter/material.dart';
import 'package:testone/config/size_config.dart';
import 'package:testone/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.lengthError,
    required this.validateError,
    required Function() click,
    required this.iconClik,
    required this.type,
  }) : super(key: key);
  final TextEditingController controller;
  final TextInputType type;
  final String hintText;
  final String validateError;
  final String? lengthError;

  final VoidCallback iconClik;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofillHints: Characters('email'),
        autocorrect: true,
        key: key,
        keyboardType: type,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Image.asset(
            'assets/images/search.png',
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13),
              borderSide: const BorderSide(
                color: whiteColor,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13),
              borderSide: const BorderSide(
                color: whiteColor,
              )),
          border: InputBorder.none,
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: const BorderSide(
              color: whiteColor, // Same visible color for focused error
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13),
              borderSide: const BorderSide(
                color: whiteColor,
              )),
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: SizeConfig.font16(),
              color: Color(0xFF3C3C4399),
              height: 1),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return validateError;
          } else if (value.length < 6) {
            return lengthError;
          }
          return null;
        });
  }
}
