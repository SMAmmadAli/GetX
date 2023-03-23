import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx/controller/switch_controller.dart';

class MySwitch extends StatelessWidget {
  MySwitch({super.key});
  SwitchController switchController = Get.put(SwitchController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Notification"),
          Obx(() => Switch(
              value: switchController.notification.value,
              onChanged: (value) {
                switchController.setSwitch(value);
              }))
        ],
      ),
    );
  }
}
