import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BackGroundCall extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BackgroundState();
  }
}

class BackgroundState extends State<BackGroundCall> {
  var nativeMessage = "";
  static const platformMethodChannel = const MethodChannel('com.test/test');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Background Call")),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              MaterialButton(
                color: Colors.grey,
                child: Text("Start Service"),
                onPressed: () async {
                  platformMethodChannel.invokeMethod("showHelloToast");
                },
              ),
              Center(child: Text(nativeMessage)),
            ],
          ),
        ),
      ),
    );
  }
}
