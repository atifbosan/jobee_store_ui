import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobee_store/constant/colors.dart';
import 'package:jobee_store/screens/items/view/items_view.dart';
import 'package:jobee_store/screens/profile/view/about_view.dart';
import 'package:jobee_store/screens/profile/view/bank_view.dart';
import 'package:jobee_store/screens/profile/view/business_hours.dart';
import 'package:jobee_store/screens/profile/view/contact_us.dart';
import 'package:jobee_store/screens/profile/view/faq_view.dart';
import 'package:jobee_store/screens/profile/view/live_chat.dart';
import 'package:jobee_store/screens/profile/view/manage_documnets.dart';
import 'package:jobee_store/screens/profile/view/manage_gallary.dart';
import 'package:jobee_store/screens/profile/view/notification.dart';
import 'package:jobee_store/screens/profile/view/personal_detail.dart';
import 'package:jobee_store/screens/profile/view/printer_setting.dart';
import 'package:jobee_store/screens/profile/view/privacy_policy.dart';
import 'package:jobee_store/screens/profile/view/restaurant_details.dart';
import 'package:jobee_store/screens/profile/view/restaurant_setting.dart';
import 'package:jobee_store/screens/profile/view/statistics.dart';
import 'package:jobee_store/screens/profile/view/term_condition.dart';
import 'package:jobee_store/screens/profile/widgets/douments_widgets.dart';
import 'package:jobee_store/widgets/txtfiled_widget.dart';

import '../../wallet/view/wallet_view.dart';
import '../controller/profile_controller.dart';
import '../widgets/list_tile_card.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: ((controller) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height * 0.45,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Container(
                        height: height * 0.35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                            ),
                            color: amberColor),
                        child: Stack(
                          children: [
                            Positioned(
                                top: 90,
                                left: 30,
                                right: 40,
                                child: Container(
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 40,
                                        backgroundImage: AssetImage(
                                            "assets/images/person_image.jpg"),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Richard Smiley",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30.0),
                                          ),
                                          Text(
                                            "Sparkgit@gmail.com",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            "+2563 5665 25684",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                            Positioned(
                              top: 40,
                              right: 10,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () => Get.to(() => PersonalDetail()),
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/edit.png")),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          top: 200,
                          left: 30,
                          right: 20,
                          child: Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(
                                      image: AssetImage(
                                          "assets/images/earning.png")),
                                  Image(
                                      image: AssetImage(
                                          "assets/images/items.png")),
                                  Image(
                                      image: AssetImage(
                                          "assets/images/statistics.png")),
                                  Image(
                                      image: AssetImage(
                                          "assets/images/setting.png")),
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 8, bottom: 12),
                        child: Text(
                          "General Settings",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      ListTileCard(
                        bgColor: Colors.blue,
                        iconData: Icons.print,
                        txtTile: "Printer Settings",
                        onPress: () {
                          Get.to(() => PrinterSetting());
                          //print("clicked");
                        },
                      ),
                      ListTileCard(
                        bgColor: Colors.brown,
                        iconData: CupertinoIcons.chart_pie,
                        txtTile: "Earning History",
                        onPress: () => Get.to(() => WalletView()),
                      ),
                      ListTileCard(
                        bgColor: Colors.purple,
                        iconData: Icons.assignment,
                        txtTile: "Items",
                        onPress: () => Get.to(() => ItemsView()),
                      ),
                      ListTileCard(
                        bgColor: Colors.blue,
                        iconData: Icons.wysiwyg_outlined,
                        txtTile: "Manage Documents",
                        onPress: () => Get.to(() => ManageDocument()),
                      ),
                      ListTileCard(
                        bgColor: Colors.greenAccent,
                        iconData: Icons.analytics_outlined,
                        txtTile: "Statistics",
                        onPress: () => Get.to(() => Statistics()),
                      ),
                      ListTileCard(
                        bgColor: Colors.purple,
                        iconData: CupertinoIcons.photo_on_rectangle,
                        txtTile: "Manage Gallery",
                        onPress: () => Get.to(() => ManageGallery()),
                      ),
                      ListTileCard(
                        bgColor: Colors.deepPurpleAccent,
                        iconData: Icons.add_business_sharp,
                        txtTile: "Restaurant Setting",
                        onPress: () => Get.to(() => RestaurantSetting()),
                      ),
                      ListTileCard(
                        bgColor: Colors.grey,
                        iconData: Icons.add_business_sharp,
                        txtTile: "Restaurant Details",
                        onPress: () => Get.to(() => RestaurantDetail()),
                      ),
                      ListTileCard(
                        bgColor: Colors.red,
                        iconData: Icons.wallet_travel,
                        txtTile: "Set Business Hours",
                        onPress: () => Get.to(() => BusinessHours()),
                      ),
                      ListTileCard(
                        bgColor: Colors.deepPurpleAccent,
                        iconData: Icons.notifications,
                        txtTile: "Notification",
                        onPress: () => Get.to(() => NotificationView()),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          top: 8,
                          bottom: 12,
                        ),
                        child: Text(
                          "Account Settings",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        child: SwitchListTile(
                          inactiveThumbColor: amberColor,
                          activeColor: Colors.green,
                          inactiveTrackColor: bgColor,
                          secondary: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.indigo.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(100)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.fingerprint,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                          title: Text("Enable Face ID/Touch ID"),
                          onChanged: (bool value) {
                            controller.toggleSwitch(value);
                          },
                          value: controller.isEnableFinger,
                        ),
                      ),
                      ListTileCard(
                        bgColor: Colors.deepPurpleAccent,
                        iconData: Icons.person_outline,
                        txtTile: "Personal Detail",
                        onPress: () => Get.to(() => PersonalDetail()),
                      ),
                      ListTileCard(
                        bgColor: Colors.black.withOpacity(0.8),
                        iconData: Icons.vpn_key_outlined,
                        txtTile: "Change Password",
                        onPress: () => changePassword(context, controller),
                      ),
                      ListTileCard(
                        bgColor: Colors.indigo.shade800,
                        iconData: CupertinoIcons.globe,
                        txtTile: "Change Language",
                        onPress: () => _show(context, controller),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          top: 8,
                          bottom: 12,
                        ),
                        child: Text(
                          "Payment",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      ListTileCard(
                        bgColor: Colors.lightGreen,
                        iconData: Icons.account_balance,
                        txtTile: "Bank Details",
                        onPress: () => Get.to(() => BankView()),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          top: 8,
                          bottom: 12,
                        ),
                        child: Text(
                          "Support",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      ListTileCard(
                        bgColor: amberColor,
                        iconData: Icons.info_outline,
                        txtTile: "About Us",
                        onPress: () => Get.to(() => AboutView()),
                      ),
                      ListTileCard(
                        bgColor: blackColor,
                        iconData: Icons.admin_panel_settings,
                        txtTile: "Privacy Policy",
                        onPress: () => Get.to(() => PrivacyPolicy()),
                      ),
                      ListTileCard(
                        bgColor: Colors.orange.withOpacity(0.8),
                        iconData: Icons.lock,
                        txtTile: "Terms and Condition",
                        onPress: () => Get.to(() => TermCondition()),
                      ),
                      ListTileCard(
                        bgColor: Colors.pink,
                        iconData: CupertinoIcons.info_circle_fill,
                        txtTile: "FAQ",
                        onPress: () => Get.to(() => FAQView()),
                      ),
                      ListTileCard(
                        bgColor: Colors.green.withOpacity(0.8),
                        iconData: CupertinoIcons.chat_bubble_2_fill,
                        txtTile: "Live Chat",
                        onPress: () => Get.to(() => LiveChat()),
                      ),
                      ListTileCard(
                        bgColor: Colors.orange,
                        iconData: Icons.email,
                        txtTile: "Contact Us",
                        onPress: () => Get.to(() => ContactUs()),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          top: 8,
                          bottom: 12,
                        ),
                        child: Text(
                          "Support",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      ListTileCard(
                        bgColor: Colors.indigo,
                        iconData: Icons.logout,
                        txtTile: "Logout",
                        onPress: () => Get.defaultDialog(
                            title: "Logout",
                            content: Text("Are you sure you want to logout"),
                            textCancel: "NO",
                            textConfirm: "YES",
                            confirmTextColor: Colors.white,
                            cancelTextColor: amberColor,
                            buttonColor: amberColor),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ))
              ],
            ),
          );
        }));
  }

  changePassword(BuildContext context, controller) {
    double height = MediaQuery.of(context).size.height;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        content: Container(
          height: height * 0.5,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: AssetImage("assets/images/keys_alert.png")),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Change Password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
                SizedBox(
                  height: 5,
                ),
                TxtFiledWidget(
                    controller: controller.currentPassController,
                    inputType: TextInputType.text,
                    inputAction: TextInputAction.next,
                    hint: "Enter Current password"),
                SizedBox(
                  height: 5,
                ),
                TxtFiledWidget(
                    controller: controller.newPassController,
                    inputType: TextInputType.text,
                    inputAction: TextInputAction.next,
                    hint: "Enter New password"),
                SizedBox(
                  height: 5,
                ),
                TxtFiledWidget(
                    controller: controller.conPassController,
                    inputType: TextInputType.text,
                    inputAction: TextInputAction.next,
                    hint: "Enter Confirm password"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: amberColor, width: 1.5)),
                      onPressed: () => Get.back(),
                      color: Colors.white,
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: amberColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    RaisedButton(
                      color: amberColor,
                      onPressed: () {},
                      child: Text(
                        "OK",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _show(BuildContext ctx, controller) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        elevation: 10,
        backgroundColor: Colors.white,
        context: ctx,
        builder: (ctx) => Container(
              width: 300,
              height: 450,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Select Language",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Tell us what language you prefer"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RadioListTile(
                        activeColor: amberColor,
                        value: 1,
                        groupValue: controller.radioVal,
                        onChanged: (value) =>
                            controller.changeRadioValue(value),
                        title: Text("English"),
                        secondary: Container(
                          decoration: BoxDecoration(
                              color: amberColor,
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "EN",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          // color: amberColor,
                        ),
                        toggleable: true,
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RadioListTile(
                        value: 1,
                        groupValue: true,
                        onChanged: (value) {},
                        title: Text("France"),
                        secondary: Container(
                          alignment: Alignment.center,
                          height: 50, width: 50,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "F",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          // color: amberColor,
                        ),
                        toggleable: true,
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RadioListTile(
                        value: 1,
                        groupValue: true,
                        onChanged: (value) {},
                        title: Text("Espanol"),
                        secondary: Container(
                          alignment: Alignment.center,
                          height: 50, width: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "ES",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          // color: amberColor,
                        ),
                        toggleable: true,
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RadioListTile(
                        value: 1,
                        groupValue: true,
                        onChanged: (value) {},
                        title: Text("Bahasa Indonesia"),
                        secondary: Container(
                          alignment: Alignment.center,
                          height: 50, width: 50,
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "B",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          // color: amberColor,
                        ),
                        toggleable: true,
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RadioListTile(
                        value: 1,
                        groupValue: true,
                        onChanged: (value) {},
                        title: Text("Bangla"),
                        secondary: Container(
                          alignment: Alignment.center,
                          height: 50, width: 50,
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "B",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          // color: amberColor,
                        ),
                        toggleable: true,
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}
