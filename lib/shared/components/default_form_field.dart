import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  final String hint;
  final TextInputType type;
  final IconData prefix;
  final void Function(String) onSubmit;
  final bool isPassword;

  const DefaultTextField({
    Key? key,
    required this.hint,
    required this.type,
    required this.prefix,
    required this.onSubmit,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1.0,
      borderRadius: BorderRadius.circular(30.0),
      child: TextFormField(
        keyboardType: type,
        style: const TextStyle(
          color: Colors.blue,
        ),
        obscureText: isPassword,
        onFieldSubmitted: onSubmit,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          prefixIcon: Icon(
            prefix,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
