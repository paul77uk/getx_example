import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_examples/controller.dart';
import 'package:getx_examples/other.dart';

class Home extends StatelessWidget {
  // Instantiate your class using Get.put() to make it available for all "child" routes there.
  final Controller c = Get.put(Controller());

  @override
  Widget build(context) {
    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.

      appBar: AppBar(
        title: Obx(
          () => Text("Clicks: ${c.count.string}"),
        ),
        centerTitle: true,
      ),

      // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           
            Obx(() => Text('count2: ${c.count2.value}')),
            Obx(() => Text('sum = ${c.total.value}')),
            RaisedButton(
              child: Text("Increase count2"),
              onPressed: () => c.increment2(),
            ),
            RaisedButton(
              child: Text("count + count2 sum"),
              onPressed: () => c.sum(),
            ),
            RaisedButton(
              child: Text("Go to Other"),
              onPressed: () => Get.to(Other()),
            ),
            RaisedButton(
              child: Text("Go to Other with off"),
              onPressed: () => Get.off(Other()),
            ),
            RaisedButton(
              child: Text("Go to Other with offAll"),
              onPressed: () => Get.offAll(Other()),
            ),
            RaisedButton(
              child: Text("change count value to 10"),
              onPressed: () => c.count(10),
            ),
            RaisedButton(
              child: Text("change count value to 20"),
              onPressed: () => c.count(20),
            ),
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: c.increment),
    );
  }
}
