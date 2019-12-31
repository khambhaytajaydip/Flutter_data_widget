import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ImageCaptureActivity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ImageCaptureState();
  }
}

class ImageCaptureState extends State<ImageCaptureActivity> {
  PermissionStatus _status;
  var imageFile = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Capture"),
      ),
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              color: Colors.grey,
              child: Text("Capture Image"),
              onPressed: () {
                _optionsDialogBox();
              },
            ),
            Padding(padding: EdgeInsets.all(20),),
            Text(imageFile.toString()),
            Padding(padding: EdgeInsets.all(20),),

            imageFile == null
                ? Text("No Image seelected")
                : Image.file(
                    imageFile,
                    width: 400,
                    height: 400,
                  ),
          ],
        ),
      )),
    );
  }

  Future<void> _optionsDialogBox() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  SimpleDialogOption(
                    child: Text("Take a Picture"),
                    onPressed: _askPermission,
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  SimpleDialogOption(
                    child: Text("Select from Gallary"),
                    onPressed: imageSelectorGallery,
                  )
                ],
              ),
            ),
          );
        });
  }

  void _askPermission() {
    PermissionHandler()
        .requestPermissions([PermissionGroup.camera]).then(_onStatusRequested);
  }

  FutureOr _onStatusRequested(Map<PermissionGroup, PermissionStatus> value) {
//    final status = value[PermissionGroup.camera];
    imageSelectorCamera();

  }



  Future imageSelectorCamera() async {
    Navigator.pop(context);
    var imageFileData = await ImagePicker.pickImage(
      source: ImageSource.camera,
    );
    setState(() {
      imageFile = imageFileData;
    });

    SnackBar(
      content: Text(imageFile.toString()),
    );
  }

  void imageSelectorGallery() async {
    Navigator.pop(context);
    imageFile = await ImagePicker.pickImage(
      source: ImageSource.gallery,
    );

    setState(() {});
  }
}
