import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child:
          // TODO STEP 1
//          Text("Hello How ate you?")

          // TODO step 2 uncomment step 2 and Comment STEP 1
        getOherText(),
          ),
    );
  }

  getOherText() => Text(
        "Hello Flutter this is working fine",
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        overflow: TextOverflow.clip,
        maxLines: 2,
        style: TextStyle(
            color: Colors.black,
            fontSize: 50.0,
            fontWeight: FontWeight.w200,
            letterSpacing: 2.0,
            wordSpacing: 40.0,
            decoration: TextDecoration.overline,
            decorationStyle: TextDecorationStyle.wavy),
      );
}
