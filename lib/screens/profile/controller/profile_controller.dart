import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class ProfileController extends GetxController {
  //code here
  TextEditingController orderController = TextEditingController();
  TextEditingController maximumController = TextEditingController();
  TextEditingController MinimumController = TextEditingController();
  TextEditingController personNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController zipController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController currentPassController = TextEditingController();
  TextEditingController newPassController = TextEditingController();
  TextEditingController conPassController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');
  String selectedCurrency = "USD \$";
  String selectedLanguage = "English";
  List<String> currencyList = [
    'USD \$',
    'Currency 1',
    'Currency 2',
    'Currency 3',
    'Currency 4'
  ];
  List<String> languageList = [
    'English',
    'Language 1',
    'Language 2',
    'Language 3',
    'Language 4'
  ];

  String selectedState = "state";
  String selectedRestaurantName = "Select Restaurant Name";
  List<String> stateList = ['state1', 'state2', 'state3', 'state4', 'state5'];
  List<String> restaurantList = [
    'Restaurant1',
    'Restaurant2',
    'Restaurant3',
    'Restaurant4',
    'Restaurant5'
  ];
  String takAway = 'YES';
  List<String> takAwayList = ['YES', 'NO'];
  bool check1 = false;
  bool check2 = false;
  bool isEnableFinger = false;
  String selectedYear = '2022';

  bool radiovalue = false;
  int radioVal = 0;

  changeRadioValue(value) {
    radioVal = value;
    update();
  }

  List<String> years = ['2015', '2016', '2017', '2018', '2019', '2020', '2022'];
  toggleSwitch(value) {
    isEnableFinger = value;
    update();
  }

  toggleCheck1(value) {
    check1 = value;
    update();
  }

  toggleCheck2(value) {
    check2 = value;
    update();
  }

  selectedYearChange(value) {
    selectedYear = value;
    update();
  }

  selectedTakAwayChange(value) {
    takAway = value;
    update();
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');
    this.number = number;
    update();
  }
}
