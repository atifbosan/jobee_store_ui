import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobee_store/constant/colors.dart';
import 'package:jobee_store/widgets/txtfield_outline_Border.dart';
import 'package:jobee_store/widgets/txtfiled_widget.dart';

import '../controller/profile_controller.dart';

class LiveChat extends StatelessWidget {
  const LiveChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: ((controller) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: bgColor,
            appBar: AppBar(
              title: Text("Welcome to Livechat"),
              centerTitle: true,
              elevation: 0,
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Card(
                        elevation: 15,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          height: height * 0.8,
                          width: width * 0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      "Our agents are not available right now. Please leave a message we will get back to you soon"),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text("Your Name"),
                                    Text(
                                      "*",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TxtFieldOutlineBorder(
                                    inputAction: TextInputAction.next,
                                    hint: "Your name..."),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text("E-mail"),
                                    Text(
                                      "*",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TxtFieldOutlineBorder(
                                    inputAction: TextInputAction.next,
                                    hint: "Your E-mail..."),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text("Subject"),
                                    Text(
                                      "*",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TxtFieldOutlineBorder(
                                    inputAction: TextInputAction.next,
                                    hint: "Your Subject..."),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text("Message"),
                                    Text(
                                      "*",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 4,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: bgColor,
                                    hoverColor: amberColor,
                                    border: OutlineInputBorder(),
                                    hintText: 'Write Message here........',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: amberColor, width: 2.0),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                CupertinoButton(
                                    color: amberColor,
                                    child: Text(
                                      "Leave a message",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.white),
                                    ),
                                    onPressed: () {})
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
