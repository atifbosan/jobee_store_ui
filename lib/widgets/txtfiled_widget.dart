import 'package:flutter/material.dart';

class TxtFiledWidget extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  final TextInputType inputType;
  final TextInputAction inputAction;
  // final FormFieldValidator<String> validator;
  String? hint;
  TxtFiledWidget(
      {Key? key,
      required this.controller,
      required this.inputType,
      required this.inputAction,
      required this.hint})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      textInputAction: inputAction,
      decoration: InputDecoration(
        labelText: "$hint",
      ),
    );
  }
}
