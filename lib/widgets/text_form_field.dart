import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldEdit extends StatefulWidget {
  final String label;
  final bool isPassword;
  final Icon? prefixIcon;
  final TextInputType? typeKeyboard;

  TextFieldEdit(
      {Key? key,
      required this.label,
      required this.isPassword,
      this.prefixIcon,
      this.typeKeyboard})
      : super(key: key);

  @override
  State<TextFieldEdit> createState() => _TextFieldEditState();
}

class _TextFieldEditState extends State<TextFieldEdit> {
  bool seekText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: seekText && widget.isPassword ? true : false,
      keyboardType: widget.typeKeyboard ?? TextInputType.text,
      decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          hintText: widget.label,
          hintStyle: const TextStyle(color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey[300],
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: seekText
                      ? Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey[800],
                        )
                      : Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.grey[500],
                        ),
                  onPressed: hideText,
                )
              : null),
    );
  }

  void hideText() {
    setState(() {
      if (seekText) {
        seekText = false;
      } else {
        seekText = true;
      }
    });
  }
}
