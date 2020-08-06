import 'package:get/get.dart';

class Controller extends GetxController {
   var count = 0.obs;
  var count2 = 0.obs;
  var total = 0.obs;
  // var name = 'Jonatas Borges'.obs;
  
  increment() => count.value++;
  increment2() => count2.value++;
  decrement() => count.value--;
  sum() => total.value = count.value + count2.value;
  
//   plusTen() => count.value = 10;
  
//   changeValue(value) {
//     count.value = value;
//   }

//   static Controller get to => Get.find();

//   int counter = 0;
//   void incrementCounter() {
//     counter++;
//     update(); // use update() to update counter variable on UI when increment be called
//   }
}
