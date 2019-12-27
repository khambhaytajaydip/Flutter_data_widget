import 'package:flutter/material.dart';

class EditTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(),
        body:
            //TODO STEP 1
            _simpleEditText());

             //TODO STEP 2
//            _simpleTextFormField());

            //TODO STEP 3
//            _textFormFieldIcon());

            //TODO STEP 4
//            _textFormFieldIconSecond());

  }
}

_textFormFieldIcon() => Container(
    margin: EdgeInsets.all(8.0),
    padding: EdgeInsets.only(bottom: 40.0),
    child: Center(
      child: TextFormField(
        maxLines: null,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.print),
            labelText: "Test", hintText: "Hello", border: OutlineInputBorder()),
      ),
    ));


_simpleTextFormField() => Container(
    margin: EdgeInsets.all(8.0),
    padding: EdgeInsets.only(bottom: 40.0),
    child: Center(
      child: TextFormField(
        maxLines: null,
        decoration: InputDecoration(
            labelText: "Test", hintText: "Hello", border: OutlineInputBorder()),
      ),
    ));

_simpleEditText() => Container(
    margin: EdgeInsets.all(8.0),
    padding: EdgeInsets.only(bottom: 40.0),
    child: Center(
      child: TextField(
        textCapitalization: TextCapitalization.sentences,
        maxLines: null,
        decoration: InputDecoration(
            hintText: "Hello", border: OutlineInputBorder(), labelText: "Test"),
      ),
    ));

_textFormFieldIconSecond() => Container(
    margin: EdgeInsets.all(8.0),
    padding: EdgeInsets.only(bottom: 40.0),
    child: Center(
      child: TextField(
        maxLines: null,
        decoration: InputDecoration(
            icon: Icon(Icons.print),
            hintText: "Hello", border: OutlineInputBorder(), labelText: "Test"),
      ),
    ));