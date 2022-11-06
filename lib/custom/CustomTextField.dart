import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final double hintTextSize;
  final String initialValue;

  final TextInputType textInputType;
  final Function onSaved;
  final Function(String?)? onChanged;
  final Function validator;
  final IconData icon;
  final bool isPrefixIcon;
  final double preIconSize;
  final double padding;
  final bool size;
  final bool onRegPage;
  final bool obscureText;

  final int minLine;
  final int? maxLine;
  final Color cursorColor;

  CustomTextField(
      {required this.labelText,
      required this.hintText,
      this.preIconSize = 30,
      this.hintTextSize = 16,
      required this.initialValue,
      required this.onSaved,
      required this.onChanged,
      required this.validator,
      this.textInputType = TextInputType.text,
      this.icon = Icons.location_on,
      this.isPrefixIcon = false,
      this.padding = 0,
      this.size = false,
      this.onRegPage = false,
      this.cursorColor = Colors.black,
      this.maxLine = null,
      this.minLine = 1,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey[300],
          ),
          child: Padding(
            padding: (isPrefixIcon)
                ? const EdgeInsets.all(0)
                : const EdgeInsets.only(left: 16),
            child: TextFormField(
              obscureText: obscureText,
              cursorColor: cursorColor,
              minLines: minLine,
              maxLines: maxLine,
              onSaved: onSaved(),
              onChanged: onChanged,
              keyboardType: textInputType,
              initialValue: initialValue,
              style: const TextStyle(fontSize: 16, color: Colors.black),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                labelText: labelText,
                labelStyle: const TextStyle(
                        fontSize: 16, color: Colors.black),
                prefixIcon: isPrefixIcon
                    ? Icon(
                        icon,
                        color: Colors.black,
                        size: preIconSize,
                      )
                    : null,
                hintStyle: 
               const TextStyle(
                        fontSize: 16, color: Colors.black),
              ),
            ),
          ),
        ));
  }
}