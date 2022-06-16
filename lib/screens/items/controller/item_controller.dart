import 'package:get/get.dart';

class ItemController extends GetxController {
  bool isEnable = false;

  switchToggle(v) {
    isEnable = v!;
    update();
  }
}
