import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/sum_controller.dart';

class SecondPage extends StatelessWidget {
  final sumController = Get.find<SumController>();
  SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("Count1 = ${sumController.count1.value}")),
            Obx(() => Text("Count2 = ${sumController.count2.value}")),
            Obx(() => Text("Sum = ${sumController.sum}")),
            ElevatedButton(
              onPressed: () => sumController.increment1(), 
              child: const Text("Incrementar Counter 1")
            ),
            ElevatedButton(
              onPressed: () => sumController.increment2(), 
              child: const Text("Incrementar Counter 2")
            )
          ],
        ),
      )
    );
  }
}