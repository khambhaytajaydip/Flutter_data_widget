import 'package:flutter/material.dart';

class ProgressBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _simpleProgressBar();
  }
}

_simpleProgressBar() => Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.blue,
        ),
      ),
    );
