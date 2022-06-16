import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobee_store/constant/colors.dart';

import '../controller/profile_controller.dart';

class PrinterSetting extends StatelessWidget {
  const PrinterSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: ((controller) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Printer Setting"),
              centerTitle: true,
              elevation: 0,
            ),
            backgroundColor: bgColor,
            body: SafeArea(
                child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    //  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Image(
                          image: AssetImage(
                              "assets/images/printer_setting_main.png")),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Center(
                          child: Text(
                              "Manage Printer Settings as per your convenience"),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Allow   Print"),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.info_outline,
                                color: amberColor,
                              )
                            ],
                          ),
                          Checkbox(
                              activeColor: amberColor,
                              value: controller.check1,
                              onChanged: (value) {
                                controller.toggleCheck1(value);
                              })
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Allow Auto  Print"),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.info_outline,
                                color: amberColor,
                              )
                            ],
                          ),
                          Checkbox(
                              activeColor: amberColor,
                              value: controller.check2,
                              onChanged: (value) {
                                controller.toggleCheck2(value);
                              })
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: height * 0.2,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Printer  Status",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              Text(
                                "Connect",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Disconnected",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Center(
                            child: SizedBox(
                              height: 50,
                              width: 330,
                              child: RaisedButton(
                                color: amberColor,
                                onPressed: () {},
                                child: Text(
                                  "UPDATE",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
          );
        }));
  }
}
