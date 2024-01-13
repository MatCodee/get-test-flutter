

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/user_controller.dart';

class FourPage extends StatelessWidget {
  final userController = Get.put<UserController>(UserController());
  FourPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("Current User: Name= ${userController.user.value.name} count= ${userController.user.value.count}")),
            ElevatedButton(onPressed: () {
              userController.updateUser("Matias",5);
            }, child: const Text("Update User"))
          ],
        ),
      ),
    );
  }
}