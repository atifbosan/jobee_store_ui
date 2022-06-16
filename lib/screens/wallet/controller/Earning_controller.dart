import 'package:get/get.dart';

class EarningController extends GetxController {
  String dropdownValue = 'All';
  List<String> category = ['All', 'Latest', 'Current'];

  changeValue(value) {
    dropdownValue = value;
    update();
  }
}
