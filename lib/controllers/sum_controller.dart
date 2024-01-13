import 'package:get/get.dart';

class SumController extends GetxController {
  final count1 = 0.obs;
  final count2 = 0.obs;

  increment1() => count1.value++;
  increment2() => count2.value++;

  int get sum => count1.value + count2.value;

  @override
  void onInit() {
    ever(count1, (callback) => print("Count 1 has changed"));
    once(count1, (callback) => print("First time count1 is Changed"));
    debounce(count1, (callback) => print("Count 1 hasn'y benn changed for 1s"),time: const Duration(seconds: 1));
    interval(count1, (callback) => print("Every 1 second count1 is changed"),time: const Duration(seconds: 1));
    super.onInit();
  }

}