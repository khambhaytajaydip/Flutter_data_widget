import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  final bigStyle = TextStyle(color: Colors.black, fontSize: 25.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            color: Colors.yellow,
            child:
                // TODO STEp 1
                _rowLogoText()));

              //TODO STEP 2
//            _rowTextMinAxis()));

              //TODO STEP 3
//            _cossMainAxisALignment()));

              //TODO STEP 4
//            _nestedColumnRow()));
  }

//TODO logo text in row
  _rowLogoText() => Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FlutterLogo(
            size: 100.0,
            colors: Colors.red,
          ),
          Text(
            "Column 2",
            style: bigStyle,
          ),
          Container(
            color: Colors.green,
            height: 100.0,
            width: 100.0,
          )
        ],
      );

// TODO Row of horizontal Text children with minAxis

  _rowTextMinAxis() => Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "Column 1",
            style: bigStyle,
          ),
          Text(
            "Column 2",
            style: bigStyle,
          ),
          Text(
            "Column 3",
            style: bigStyle,
          )
        ],
      );

// TODO CrossAxisAlignment & MainAxisAlignment

  _cossMainAxisALignment() => Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FlutterLogo(
            size: 100.0,
            colors: Colors.red,
          ),
          Text(
            "Child Two",
            style: bigStyle,
          ),
          Container(
            color: Colors.blue,
            height: 100.0,
            width: 100.0,
          )
        ],
      );

// TODO Nested Columns and Rows
  _nestedColumnRow() => Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text("Parent Text 1"),
          Text("Parent Text 2"),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text("Child Row Text 1"),
              Text("Child Row Text 2")
            ],
          ),
        ],
      );
}
