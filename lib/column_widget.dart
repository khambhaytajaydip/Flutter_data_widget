import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body:

            // TODO STEP 1 uncomment other STEPS
              _verticalColumn());

            //TODO STEP 2 uncomment other STEPS
//            _differtTypeWidget());

            //TODO STEP 3 uncomment other STEPS
//            _crossMainAxisColumn());

            //TODO STEP 4 uncoment other STEPS
//            _columnAndrRows());
  }

  final bigStyle = TextStyle(color: Colors.red, fontSize: 30.0);

  // TODO Column of vertical Text children
  _verticalColumn() => Column(
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

//TODO Column of different types of widgets
  _differtTypeWidget() => Column(
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
            color: Colors.red,
            height: 100.0,
            width: 100.0,
          )
        ],
      );

  // TODO CrossAxisAlignment & MainAxisAlignment

  _crossMainAxisColumn() => Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
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

  _columnAndrRows() => Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text("Parent Text 1"),
          Text("Parent Text 2"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Child Row Text 1"),
              Text("Child Row Text 2")
            ],
          ),
        ],
      );
}
