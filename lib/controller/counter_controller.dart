import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt number = 1.obs;

  incrementNumber() {
    number.value++;
    print(number.value);
  }
}
