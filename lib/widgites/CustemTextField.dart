import 'package:flutter/material.dart';

class CustemTextFiled extends StatelessWidget {
  CustemTextFiled(
      {super.key,
      this.hint,
      this.OnChange,
      this.ObscureText = false,
      this.type = TextInputType.text});
  String? hint;
  Function(String)? OnChange;
  final bool? ObscureText;
  TextInputType? type;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // to hide content text field
      obscureText: ObscureText!,
      // tyepe keyboard
      keyboardType: type!,
      // because Form widgit in reigister page

      onChanged: OnChange,
      style: const TextStyle(color: Colors.black, fontSize: 24),
      decoration: InputDecoration(
        counterStyle: const TextStyle(color: Colors.blue),
        hintText: '$hint',
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
