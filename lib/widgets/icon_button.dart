import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final Function onPress;
  final IconData icon;
  final Color color;
  final Color iconColor;
  const IconButtonWidget(
      {Key? key,
      required this.onPress,
      required this.iconColor,
      required this.icon,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPress(),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
        color: color,
      ),
    );
  }
}
