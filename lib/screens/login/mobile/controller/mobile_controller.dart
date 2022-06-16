import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class MobileController extends GetxController {
  final TextEditingController controller = TextEditingController();
  final TextEditingController passController = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');
    this.number = number;
    update();
  }

  bool isObscure = true;
  togglePassword(v) {
    isObscure = !v;
    update();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
