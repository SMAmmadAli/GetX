import 'package:get/get.dart';

class SwitchController extends GetxController {
  RxBool notification = false.obs;

  setSwitch(bool value) {
    notification.value = value;
  }
}
