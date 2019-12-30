import 'package:flutter/material.dart';
import 'package:test_flutter/Edittext_widget.dart';
import 'package:test_flutter/api_calling.dart';
import 'package:test_flutter/appbar_widget.dart';
import 'package:test_flutter/button_widget.dart';
import 'package:test_flutter/container_widget.dart';
import 'package:test_flutter/database_activity.dart';
import 'package:test_flutter/progressbar_widget.dart';
import 'package:test_flutter/row_widget.dart';
import 'package:test_flutter/stack_widget.dart';
import 'package:test_flutter/text_widget.dart';

import 'column_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        'Text': (BuildContext context) => TextWidget(),
        'AppBar': (BuildContext context) => AppBarWidget(),
        'Container': (BuildContext context) => ContainerWidget(),
        'Column': (BuildContext context) => ColumnWidget(),
        'Row': (BuildContext context) => RowWidget(),
        'Button': (BuildContext context) => ButtonWidget(),
        'Stack': (BuildContext context) => StackWidget(),
        'Edittext': (BuildContext context) => EditTextWidget(),
        'ProgressBar':(BuildContext context) => ProgressBarWidget(),
        'API calling':(BuildContext context) => ApiCalling(),
        'Darabase':(BuildContext context) => DatabaseActivity(),

      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var varwidgetList = [
      "Text",
      "AppBar",
      "Container",
      "Column",
      "Row",
      "Button",
      "Stack",
      "Edittext",
      "ProgressBar",
      "API calling",
      "Database",
      "Photo capture"
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
        ),
        body: ListView.builder(
            itemCount: varwidgetList.length,
            itemBuilder: (builder, index) {
              return Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('${varwidgetList[index]}');
                  },
                  child: Card(
                    elevation: 5.0,
                    child: Container(
                        color: Colors.black12,
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              varwidgetList[index],
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20.0),
                            ),
                            Container(
                              child: Icon(Icons.keyboard_arrow_right),
                            )
                          ],
                        )),
                  ),
                ),
              );
            }));
  }
}
