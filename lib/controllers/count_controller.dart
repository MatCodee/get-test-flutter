import 'package:get/get.dart';

class CountController extends GetxController {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    update();
  }

}