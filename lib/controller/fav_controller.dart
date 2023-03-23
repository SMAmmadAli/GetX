import 'package:get/get.dart';

class FavController extends GetxController {
  RxList<String> itemList = ["Mango", "Banana", "Apple", "Pineapple"].obs;
  RxList favList = [].obs;

  addToFav(String value) {
    favList.add(value);
  }

  removeToFav(String value) {
    favList.remove(value);
  }
}
