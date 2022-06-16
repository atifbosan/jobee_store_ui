import 'package:flutter/material.dart';

class ListTileCard extends StatelessWidget {
  final Color bgColor;
  final IconData iconData;
  final txtTile;
  final Function onPress;
  const ListTileCard(
      {Key? key,
      required this.bgColor,
      required this.iconData,
      required this.txtTile,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
                color: bgColor, borderRadius: BorderRadius.circular(100)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                iconData,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
        title: Text(
          "$txtTile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: IconButton(
            onPressed: () {
              onPress();
            },
            icon: Icon(Icons.arrow_forward_ios)),
      ),
    );
  }
}
