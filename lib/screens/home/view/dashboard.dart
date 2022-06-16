import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobee_store/screens/home/controller/home_controller.dart';

import '../../../constant/colors.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: ((controller) {
          return Scaffold(
            body: Center(
              child: controller.widgetOptions.elementAt(controller.index),
            ),
            bottomNavigationBar: BottomNavigationBar(
                unselectedItemColor: Colors.grey,
                selectedItemColor: amberColor,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.water_damage_outlined), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.assignment_outlined), label: "Items"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.account_balance_wallet_outlined),
                      label: "Wallet"),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.person), label: "Profile"),
                ],
                type: BottomNavigationBarType.shifting,
                currentIndex: controller.index,
                iconSize: 40,
                onTap: controller.changeIndex,
                elevation: 5),
          );
        }));
  }
}
