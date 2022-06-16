import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';
import '../controller/Earning_controller.dart';
import '../widgets/earning_card.dart';

class WalletView extends StatelessWidget {
  const WalletView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GetBuilder<EarningController>(
        init: EarningController(),
        builder: ((controller) {
          return Scaffold(
            backgroundColor: bgColor,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Text("Earning History"),
              centerTitle: true,
              elevation: 0,
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        DropdownButton<String>(
                          items: controller.category.map((String val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: new Text(val),
                            );
                          }).toList(),
                          hint: Text(controller.dropdownValue),
                          onChanged: (value) {
                            controller.changeValue(value);
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.arrow_left_circle,
                              color: amberColor,
                            )),
                        Text(
                          "28 MAY, 2022",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.arrow_right_circle,
                              color: amberColor,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    cardWidget(),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ratingCardWidget(
                            "Total Earnings",
                            "\$ 140",
                            "total_earn",
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          ratingCardWidget(
                            "Total Earnings",
                            "\$ 140",
                            "avg_stars",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: Container(
                        child: ListView.builder(
                            itemCount: 10,
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
                                                style:
                                                    TextStyle(color: txtColor),
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
            ),
          );
        }));
  }
}
