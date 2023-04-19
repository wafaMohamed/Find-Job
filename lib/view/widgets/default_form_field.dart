import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? prefixIconAsset;
  final IconData? suffixIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const CustomTextField({
    Key? key,
    required this.hint,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.prefixIconAsset,
    this.suffixIcon,
    required this.controller,
    this.validator, required Image prefixIcon,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        hintText: widget.hint,
        prefixIcon: widget.prefixIconAsset != null
            ? Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            widget.prefixIconAsset!,
            height: 24,
            width: 24,
          ),
        )
            : null,
        suffixIcon: widget.suffixIcon != null ? Icon(widget.suffixIcon) : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: _isFocused ? Colors.green : Colors.grey,
          ),
        ),
      ),
      validator: widget.validator,
      onChanged: (_) {
        setState(() {
          _isFocused = true;
        });
      },
      onFieldSubmitted: (_) {
        setState(() {
          _isFocused = false;
        });
      },
      onTap: () {
        setState(() {
          _isFocused = true;
        });
      },
      onEditingComplete: () {
        setState(() {
          _isFocused = false;
        });
      },
    );
  }
}
