import 'package:flutter/material.dart';

import '../constant/colors.dart';

class TxtFieldOutlineBorder extends StatelessWidget {
  final TextInputAction inputAction;
  final String hint;
  const TxtFieldOutlineBorder(
      {Key? key, required this.inputAction, required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: inputAction,
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: bgColor,
        border: OutlineInputBorder(),
        hintText: '$hint',
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: amberColor, width: 2.0),
        ),
      ),
    );
  }
}
