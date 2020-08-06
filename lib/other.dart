import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_examples/controller.dart';

class Other extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final Controller c = Get.find();
  // final Controller c = Get.put(Controller());

  @override
  Widget build(context) {
    // Access the updated count variable
    return Scaffold(
        appBar: AppBar(
          title: Text('Other'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() => Text(c.count.string)),
            RaisedButton(
              child: Text("Go Back"),
              onPressed: () => Get.back(),
            ),
            RaisedButton(
              child: Text("SnackBar"),
              onPressed: () => Get.snackbar(
                "Hey i'm a Get SnackBar!", // title
                "It's unbelievable! I'm using SnackBar without context, without boilerplate, without Scaffold, it is something truly amazing!", // message
                icon: Icon(Icons.alarm),
                shouldIconPulse: true,

                barBlur: 20,
                isDismissible: true,
                duration: Duration(seconds: 3),
              ),
            ),
            RaisedButton(
              child: Text("Raw SnackBar"),
              onPressed: () => Get.rawSnackbar(message: 'Raw SnackBar'),
            ),
            RaisedButton(
              child: Text("default Dialog"),
              onPressed: () => Get.defaultDialog(
                  onConfirm: () => print("Ok"),
                  middleText: "Dialog made in 3 lines of code"),
            ),
            RaisedButton(
              child: Text("bottomSheet"),
              onPressed: () => Get.bottomSheet(
                Container(
                  child: Wrap(
                    children: <Widget>[
                      ListTile(
                          leading: Icon(Icons.music_note),
                          title: Text('Music'),
                          onTap: () => {}),
                      ListTile(
                        leading: Icon(Icons.videocam),
                        title: Text('Video'),
                        onTap: () => {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.remove), onPressed: c.decrement));
  }
}
