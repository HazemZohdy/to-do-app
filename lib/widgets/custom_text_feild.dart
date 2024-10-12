import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key, required this.hint, this.maxline = 1, this.onSaved, this.onChange});

  final String hint;
  final int maxline;
  final Function(String)? onChange;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is required';
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryKey,
      maxLines: maxline,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: kPrimaryKey,
          fontSize: 15,
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryKey),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
