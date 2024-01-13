import 'package:get/get.dart';
import 'package:getx/models/user_model.dart';

class UserController extends GetxController {
  final Rx<User> user = User().obs;

  void updateUser(String name,int count) {
    user.update((val) {
      val!.name = name;
      val.count = count;
    });
  }

}