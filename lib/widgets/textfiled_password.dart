import 'package:flutter/material.dart';

class TextFieldPassword extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  bool isScure = false;
  final Function onTap;
  TextFieldPassword({
    Key? key,
    required this.controller,
    required this.isScure,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isScure,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        hoverColor: Colors.grey,
        filled: true,
        fillColor: Colors.white.withOpacity(0.3),
        hintText: "Please Enter Password",
        suffixIcon: IconButton(
            onPressed: () {
              onTap();
            },
            icon: Icon(
              isScure == false ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
            )),
      ),
    );
  }
}
