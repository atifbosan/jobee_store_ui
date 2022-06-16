import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';
import '../controller/item_controller.dart';

class ItemCardWidget extends StatelessWidget {
  String? title;
  String? subTitle;
  Color subTitleColor;
  ItemCardWidget(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.subTitleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GetBuilder<ItemController>(
        init: ItemController(),
        builder: ((controller) {
          return Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: ListTile(
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$title',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: subTitleColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        '$subTitle',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                trailing: SizedBox(
                  width: width * 0.25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "\$ 4.00",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: amberColor),
                      ),
                      Switch(
                          inactiveTrackColor: wbgColor,
                          activeColor: Colors.green,
                          value: controller.isEnable,
                          onChanged: (bool value) {
                            controller.switchToggle(value);
                          })
                    ],
                  ),
                ),
              ),
            ),
          );
        }));
  }
}
