import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobee_store/screens/profile/widgets/set_hours_widget.dart';

import '../../../constant/colors.dart';
import '../controller/profile_controller.dart';

class BusinessHours extends StatelessWidget {
  const BusinessHours({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int order = 25;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: (controller) {
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: Colors.white,
              body: Column(
                children: [
                  Container(
                    height: height * 0.24,
                    child: Stack(
                      children: [
                        Container(
                          height: height * 0.18,
                          color: amberColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () => Get.back(),
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                    )),
                                Text(
                                  "Set Times",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Container(),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          right: 10,
                          top: 90,
                          child: Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              height: height * 0.07,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: TabBar(
                                  unselectedLabelColor: txtColor,
                                  unselectedLabelStyle:
                                      TextStyle(fontWeight: FontWeight.bold),
                                  indicator: BoxDecoration(
                                      color: amberColor,
                                      borderRadius: BorderRadius.circular(20)),
                                  tabs: [
                                    Tab(text: "Slot 1"),
                                    Tab(text: "Order"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "NOTE : Please make sure To hrs must be greater than From Hr.",
                    style: TextStyle(
                        color: txtColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: Container(
                      child: ListView(
                        children: [
                          SetHoursCardWidget(txt: "Sunday"),
                          SetHoursCardWidget(txt: "Monday"),
                          SetHoursCardWidget(txt: "Tuesday"),
                          SetHoursCardWidget(txt: "Wednesday"),
                          SetHoursCardWidget(txt: "Thursday"),
                          SetHoursCardWidget(txt: "Friday"),
                          SetHoursCardWidget(txt: "Saturday"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
