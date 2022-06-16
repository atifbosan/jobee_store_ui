import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:jobee_store/screens/items/widgest/item_card_widget.dart';

import '../../../constant/colors.dart';
import '../controller/item_controller.dart';

class ItemsView extends StatelessWidget {
  const ItemsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GetBuilder<ItemController>(
        init: ItemController(),
        builder: ((controller) {
          return Scaffold(
            backgroundColor: bgColor,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Text("Items"),
              centerTitle: true,
              elevation: 0,
            ),
            body: SafeArea(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Burger",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ItemCardWidget(
                        title: "Chicken Maharaja ..",
                        subTitle: "IN STOCK",
                        subTitleColor: Colors.red),
                    SizedBox(
                      height: 5,
                    ),
                    ItemCardWidget(
                        title: "Chicken Maharaja ..",
                        subTitle: "IN STOCK",
                        subTitleColor: Colors.deepPurpleAccent),
                    SizedBox(
                      height: 5,
                    ),
                    ItemCardWidget(
                        title: "Chicken Maharaja ..",
                        subTitle: "IN STOCK",
                        subTitleColor: Colors.pinkAccent),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Deserts",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ItemCardWidget(
                        title: "Choco Maharaja ..",
                        subTitle: "IN STOCK",
                        subTitleColor: Colors.indigo),
                    SizedBox(
                      height: 5,
                    ),
                    ItemCardWidget(
                        title: "Red Grape Juice",
                        subTitle: "IN STOCK",
                        subTitleColor: Colors.cyanAccent),
                    SizedBox(
                      height: 5,
                    ),
                    ItemCardWidget(
                        title: "Muffin Cake",
                        subTitle: "IN STOCK",
                        subTitleColor: Colors.blue),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            )),
          );
        }));
  }
}
