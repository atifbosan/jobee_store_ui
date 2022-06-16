import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobee_store/constant/colors.dart';
import 'package:jobee_store/screens/home/controller/home_controller.dart';
import 'package:jobee_store/screens/home/view/order_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int order = 25;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return DefaultTabController(
            length: 3,
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
                                Container(),
                                Text(
                                  "Order",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Image(
                                  image: AssetImage("assets/images/undo.png"),
                                  height: height * 0.05,
                                )
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
                                    Tab(text: "New($order)"),
                                    Tab(text: "Processing"),
                                    Tab(text: "Dispached"),
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
                    "YOU HAVE $order NEW ORDER(S)",
                    style: TextStyle(
                        color: txtColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: Container(
                      child: ListView.builder(
                          itemCount: order,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ListTile(
                                    onTap: () => Get.to(() => OrderView()),
                                    title: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "#1524566221",
                                          style: TextStyle(
                                              color: txtColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "2 items",
                                              style: TextStyle(color: txtColor),
                                            ),
                                            Text("05:38 PM",
                                                style: TextStyle(
                                                    color: subtxtColor)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
