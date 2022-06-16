import 'package:flutter/material.dart';

import '../../../constant/colors.dart';

class ManageDocumentWidget extends StatelessWidget {
  final String? txtSubTile;
  final String? txtTile;
  const ManageDocumentWidget(
      {Key? key, required this.txtTile, required this.txtSubTile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.2,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: amberColor, width: 1.5),
              top: BorderSide(color: amberColor, width: 1.5),
              right: BorderSide(color: amberColor, width: 1.5),
              left: BorderSide(color: amberColor, width: 1.5)),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white),
      child: Center(
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(100)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.warning,
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
          subtitle: Text(
            "$txtSubTile",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: IconButton(
              onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down)),
        ),
      ),
    );
  }
}
