import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child:
                //TODO STEP 1 comment other steps
                 _raisedButton()));

                //TODO STEP 2 comment other steps
//               _materialButton()));

                //TODO STEP 3 comment other steps
//                 _flateButton()));

                //TODO STEP 4 comment other steps
//               _outLineButton()));

                //TODO STEP 5 comment other steps
//               _iconButton()));

                //TODO STEP 6 comment other apps
//               _floatingActionButtonMini()));

//                 TODO STEP 7 comment other apps
//               _floatingActionButtonNormal()));

  }

// TODO RaisedButton

  _raisedButton() => RaisedButton(
        onPressed: () {},
        color: Colors.yellow,
        disabledTextColor: Colors.grey,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        elevation: 20.0,
        splashColor: Colors.green,
        highlightColor: Colors.red,
        highlightElevation: 1.0,
        child: Text("Raised Button"),
      );

// TODO MaterialButton

  _materialButton() => MaterialButton(
        minWidth: 250.0,
        onPressed: () {},
        colorBrightness: Brightness.dark,
        color: Colors.deepPurpleAccent,
        elevation: 20.0,
        splashColor: Colors.green,
        //highlightColor: Colors.red,
        highlightElevation: 1.0,
        child: Text("Material Button"),
      );

// TODO FlatButton

  _flateButton() => FlatButton(
        onPressed: () {},
        colorBrightness: Brightness.dark,
        color: Colors.deepPurpleAccent,
        splashColor: Colors.green,
        highlightColor: Colors.red,
        child: Text("Flat Button"),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(20.0), right: Radius.circular(1.0))),
      );

// TODO OutlineButton

  _outLineButton() => OutlineButton(
        onPressed: () {},
        borderSide: BorderSide(width: 1.0, color: Colors.red),
        color: Colors.deepPurpleAccent,
        highlightedBorderColor: Colors.purple,
        splashColor: Colors.green,
        //highlightColor: Colors.red,
        child: Text("Raised Button"),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(10.0), bottom: Radius.circular(1.0))),
      );

// TODO IconButton

  _iconButton() => IconButton(
      color: Colors.purple,
      splashColor: Colors.yellow,
      // highlightColor: Colors.red,
      icon: Icon(
        Icons.build,
        size: 40.0,
      ),
      onPressed: () {});



//TODO Simple Circular Button using FloatingActionButton (Mini and Normal Size)

 _floatingActionButtonNormal()=>FloatingActionButton(
                backgroundColor: Colors.orange,
                child: Icon(Icons.mic, size: 30.0, color: Colors.white,),
                onPressed: (){});


 _floatingActionButtonMini()=>FloatingActionButton(
                mini: true,
                backgroundColor: Colors.green,
                child: Icon(Icons.mic, size: 30.0, color: Colors.white,),
                onPressed: (){});









}
