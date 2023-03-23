import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx/controller/counter_controller.dart';
import 'package:state_management_getx/view/homeview.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Started"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar("Ammad", "GetX SnakeBar",
            backgroundColor: Colors.lightBlueAccent,
            margin: const EdgeInsets.only(bottom: 80),
            colorText: Colors.amber,
            snackPosition: SnackPosition.BOTTOM,
            duration: Duration(seconds: 5),
            icon: Icon(Icons.add),
            onTap: (snack) => print("Ye bhi pressed"),
            // icon: IconButton(
            //     onPressed: () {
            //       print("Icon pressed");
            //     },
            //     icon: const Icon(Icons.add)),
            mainButton: TextButton(
                onPressed: () {
                  print("Main Button has pressed");
                },
                child: Text("Main Button")));
      }),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                    title: "GetX Dialog",
                    middleText: "I am a Dialog",
                    backgroundColor: Colors.blueGrey,
                    // cancel: Text('Cancel'),
                    // confirmTextColor: Colors.white,
                  );
                },
                child: Text("Show Dialog")),
            Obx(
              () => Text(
                counterController.number.toString(),
                style: const TextStyle(
                    fontSize: 22,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  counterController.incrementNumber();
                },
                child: const Text("Add Number")),
            ElevatedButton(
                onPressed: () {
                  counterController.moveToSliderScreen();
                },
                child: const Text("Slider Screen")),
            ElevatedButton(
                onPressed: () {
                  counterController.moveToSwitchScreen();
                },
                child: const Text("Switch Screen"))
          ],
        ),
      ),
    );
  }
}
