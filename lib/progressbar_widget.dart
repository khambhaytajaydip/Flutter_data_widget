import 'package:flutter/material.dart';

class ProgressBarWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _simpleProgressBar();
  }
}

_simpleProgressBar() => Center(
      child: CircularProgressIndicator(
        backgroundColor: Colors.blue,
      ),
    );
