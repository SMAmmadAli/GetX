import 'package:get/get.dart';
import 'package:state_management_getx/view/opacity_slider.dart';
import 'package:state_management_getx/view/switch.dart';

class CounterController extends GetxController {
  RxInt number = 1.obs;

  incrementNumber() {
    number.value++;
    print(number.value);
  }

  moveToSliderScreen() {
    Get.to(OpacitySlider());
  }

  moveToSwitchScreen() {
    Get.to(SwitchScreen());
  }
}
