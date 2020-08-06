import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0.obs;
  var name = 'Jonatas Borges'.obs;
  increment() => count.value++;
  decrement() => count.value--;
  plusTen() => count.value = 10;
  changeValue(value) {
    count.value = value;
  }

  static Controller get to => Get.find();

  int counter = 0;
  void incrementCounter() {
    counter++;
    update(); // use update() to update counter variable on UI when increment be called
  }
}
