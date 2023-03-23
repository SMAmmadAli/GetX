import 'package:get/get.dart';
import 'package:state_management_getx/view/favView.dart';
import 'package:state_management_getx/view/opacity_slider_view.dart';
import 'package:state_management_getx/view/switch_view.dart';

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

  moveToFavScreen() {
    Get.to(FavView());
  }
}
