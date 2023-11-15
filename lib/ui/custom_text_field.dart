import 'package:flutter/material.dart';

import '../resources/colors.dart';
import '../utils/constants.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final String label;
  final bool hideText;

  final EdgeInsets margin;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;

  const CustomTextField({
    super.key,
    required this.hint,
    required this.label,
    this.suffixIcon,
    this.hideText = false,
    this.margin = const EdgeInsets.all(marginSide),
    required this.textInputAction,
    required this.keyboardType,
    this.onChanged,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: widget.margin,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: CustomColors.color717177, width: 1.0),
        borderRadius: BorderRadius.circular(marginSideHalf),
      ),
      child: Container(
        padding:
            const EdgeInsets.symmetric(horizontal: marginSide, vertical: 0),
        child: TextFormField(
          obscureText: widget.hideText,
          onChanged: widget.onChanged,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          style: const TextStyle(
            color: CustomColors.color717177,
            fontWeight: FontWeight.normal,
            fontSize: 16,
          ),
          decoration: InputDecoration(
            suffixIcon: widget.suffixIcon,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border: InputBorder.none,
            labelText: widget.label,
            hintText: widget.hint,
            labelStyle: const TextStyle(
              color: CustomColors.color717177,
              fontWeight: FontWeight.normal,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
