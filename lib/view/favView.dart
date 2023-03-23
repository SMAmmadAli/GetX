import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:state_management_getx/controller/fav_controller.dart';

class FavView extends StatelessWidget {
  FavView({super.key});

  FavController favController = Get.put(FavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add to Favorite"),
      ),
      body: ListView.builder(
        itemCount: favController.itemList.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
                  onTap: () {
                    if (favController.favList
                        .contains(favController.itemList[index])) {
                      favController.removeToFav(favController.itemList[index]);
                    } else {
                      favController.addToFav(favController.itemList[index]);
                    }
                  },
                  title: Text(favController.itemList[index].toString()),
                  trailing: Obx(
                    () => Icon(
                      Icons.favorite,
                      color: favController.favList
                              .contains(favController.itemList[index])
                          ? Colors.red
                          : Colors.white,
                    ),
                  )));
        },
      ),
    );
  }
}
