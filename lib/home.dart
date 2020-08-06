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
            // On your Stateless/Stateful class, use GetBuilder to update Text when increment be called
            // GetBuilder<Controller>(
            //   init: Controller(), // INIT IT ONLY THE FIRST TIME
            //   builder: (_) => Text(
            //     '${_.counter}',
            //   ),
            // ),
//Initialize your controller only the first time. The second time you are using ReBuilder for the same controller, do not use it again. Your controller will be automatically removed from memory as soon as the widget that marked it as 'init' is deployed. You don't have to worry about that, Get will do it automatically, just make sure you don't start the same controller twice.
            // Text("${Controller.to.counter}"),

            // RaisedButton(
            //   child: Text("Increment counter"),
            //   onPressed: () => Controller.to.increment(),
            // ),
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
              child: Text("change count value"),
              onPressed: () => c.changeValue(10),
            ),
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: c.increment),
    );
  }
}
