import 'package:flutter/material.dart';
import 'package:jobee_store/constant/colors.dart';

class ManageGallery extends StatelessWidget {
  const ManageGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manage Gallery"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                    image: AssetImage("assets/images/manage_gallery_img.png")),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Upload Picture",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: amberColor,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
