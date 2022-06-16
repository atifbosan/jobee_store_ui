import 'package:flutter/material.dart';

import '../widgets/douments_widgets.dart';

class ManageDocument extends StatelessWidget {
  const ManageDocument({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manage Documents"),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ManageDocumentWidget(
                txtTile: "Store/Restaurant Owner ID",
                txtSubTile: "Upload your documents"),
            SizedBox(
              height: 10,
            ),
            ManageDocumentWidget(
                txtTile: "Store/Restaurant Owner ID",
                txtSubTile: "Upload your documents"),
          ],
        ),
      )),
    );
  }
}
