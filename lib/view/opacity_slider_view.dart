import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:state_management_getx/controller/opacity_slider_controller.dart';

class OpacitySlider extends StatelessWidget {
  OpacitySlider({super.key});
  SliderController sliderController = Get.put(SliderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Obx(
              () => Container(
                margin: const EdgeInsets.only(top: 20),
                height: 200,
                width: 200,
                color: Colors.blue.withOpacity(sliderController.opacity.value),
              ),
            ),
            Obx(
              () => Slider(
                value: sliderController.opacity.value,
                onChanged: (value) {
                  sliderController.setOpacity(value);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
