import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:test_flutter/database/database_helper.dart';
import 'package:test_flutter/model/dog.dart';

class AddDogDialog {
  final teName = TextEditingController();
  final teAge = TextEditingController();
  Dog dog;


  static const TextStyle linkStyle = const TextStyle(
    color: Colors.blue,
    decoration: TextDecoration.underline,
  );

  Widget buildAboutDialog(BuildContext context, _myDogContext, bool isEdit,
      Dog dog) {
    if (dog != null) {
      this.dog = dog;
      teName.text = dog.name;
      teAge.text = dog.age;
    }


    return AlertDialog(
      title: Text(isEdit ? 'Edit' : 'Add new Dog'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            getTextField("Enter name", teName),
            getTextField("Enter Age", teAge),
            GestureDetector(
              onTap: () {
                addRecord(isEdit);
                Navigator.of(context).pop();
                print("dog context :$_myDogContext");
                _myDogContext.displayRecord();
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: getAppBorderButton(
                    isEdit ? "Edit" : "Add",
                    EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getTextField(String inputBoxName,
      TextEditingController inputBoxController) {
      var loginBtn = new Padding(
      padding: const EdgeInsets.all(5.0),
      child: new TextFormField(
        controller: inputBoxController,
        decoration: new InputDecoration(
          hintText: inputBoxName,
        ),
      ),
    );

    return loginBtn;
  }


  Future addRecord(bool isEdit) async {
    var db = DatabaseHelper();
    var user = new Dog(teName.text, teAge.text);
    if (isEdit) {
      user.setDogId(this.dog.id);
      await db.update(user);
    } else {
      await db.saveDog(user);
    }
  }



  Widget getAppBorderButton(String buttonLabel, EdgeInsets margin) {
    var loginBtn = new Container(
      margin: margin,
      padding: EdgeInsets.all(8.0),
      alignment: FractionalOffset.center,
      decoration: new BoxDecoration(
        border: Border.all(color: const Color(0xFF28324E)),
        borderRadius: new BorderRadius.all(const Radius.circular(6.0)),
      ),
      child: new Text(
        buttonLabel,
        style: new TextStyle(
          color: const Color(0xFF28324E),
          fontSize: 20.0,
          fontWeight: FontWeight.w300,
          letterSpacing: 0.3,
        ),
      ),
    );
    return loginBtn;
  }


}
