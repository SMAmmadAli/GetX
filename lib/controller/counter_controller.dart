import 'package:get/get.dart';
import 'package:state_management_getx/view/opacity_slider.dart';

class CounterController extends GetxController {
  RxInt number = 1.obs;

  incrementNumber() {
    number.value++;
    print(number.value);
  }

  MoveToNewScreen() {
    Get.to(OpacitySlider());
  }
}
