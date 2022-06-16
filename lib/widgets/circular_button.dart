import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final Function onPress;
  final String txt;
  final Color color;
  final Color txtcolor;
  const CircularButton(
      {Key? key,
      required this.onPress,
      required this.txt,
      required this.color,
      required this.txtcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onPress,
      elevation: 2.0,
      fillColor: color,
      child: Text(
        "$txt",
        style: TextStyle(color: txtcolor),
      ),
      padding: EdgeInsets.all(15.0),
      shape: CircleBorder(),
    );
  }
}
