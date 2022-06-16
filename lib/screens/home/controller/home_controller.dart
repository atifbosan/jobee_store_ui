import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobee_store/screens/home/view/home_view.dart';
import 'package:jobee_store/screens/items/view/items_view.dart';
import 'package:jobee_store/screens/profile/view/profile_view.dart';
import 'package:jobee_store/screens/wallet/view/wallet_view.dart';

class HomeController extends GetxController {
  bool isSwitched = false;
  int index = 0;
  List<Widget> widgetOptions = <Widget>[
    HomeView(),
    ItemsView(),
    WalletView(),
    ProfileView()
  ];
  changeIndex(i) {
    index = i;
    update();
  }

  toggle(v) {
    isSwitched = v!;
    update();
  }
}
