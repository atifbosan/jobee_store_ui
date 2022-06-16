import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:jobee_store/screens/login/mobile/view/mobile_login.dart';

import '../../../constant/colors.dart';
import '../../../widgets/circular_button.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: wbgColor,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                            image: AssetImage(
                              "assets/images/jobee.png",
                            ),
                            width: width * 0.4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircularButton(
                                onPress: () {},
                                color: Colors.pink,
                                txt: "ENG",
                                txtcolor: Colors.white,
                              ),
                              CircularButton(
                                onPress: () {},
                                color: Colors.blue,
                                txt: "USD",
                                txtcolor: Colors.white,
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image(
                        image: AssetImage(
                          "assets/images/welcome_mono.png",
                        ),
                        width: width * 0.8,
                      ),
                    ],
                  ),
                ),
              )),
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 8,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enable Smart login. Its quick & secure",
                    style: TextStyle(
                        color: amberColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "You can log in to app the same way you unlock the device",
                  ),
                ],
              ),
            ),
          )),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => MobileLogin()),
        child: Icon(
          Icons.arrow_forward_ios_sharp,
          color: Colors.white,
        ),
        backgroundColor: amberColor,
      ),
    );
  }
}
