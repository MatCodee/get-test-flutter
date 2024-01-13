import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/count_controller.dart';
import 'package:getx/pages/four_page.dart';
import 'package:getx/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  final CountController countController = Get.put(CountController());
  FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<CountController>(builder: (controller) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Current Count value ${controller.count}'),
              ElevatedButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: const Text("Update Name & Stored Count")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => SecondPage());
                  },
                  child: const Text("Next Screen")),
              ElevatedButton(onPressed: () {
                Get.to(() => FourPage());
              }, child: const Text("User functions"))
            ],
          ),
        );
      }),
    );
  }
}
