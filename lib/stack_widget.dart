import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
        //TODO STEP 1
         _containerStack()

        //TODO STEP 2 uncomment other steps
//         _stackAlignment()

        //TODO STEP 3 uncomment other steps
//         _stackUsingPosition()

        //TODO STEP 4 uncomment other steps
//        _platingWithPositioned()

        //TODO STEP 5 uncomment other steps
//        _playingWithPositioned()



    );
  }




// TODO Stack of Containers of reducing size

 _containerStack()=>Stack(
        children: <Widget>[
          Container(
            height: 300.0,
            width: 300.0,
            color: Colors.red,
          ),
          Container(
            height: 250.0,
            width: 250.0,
            color: Colors.green,
          ),
          Container(
            height: 200.0,
            width: 200.0,
            color: Colors.yellow,
          )
        ],
      );







// TODO Playing with Alignment property

 _stackAlignment()=>Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 300.0,
            width: 300.0,
            color: Colors.red,
          ),
          Container(
            height: 250.0,
            width: 250.0,
            color: Colors.green,
          ),
          Container(
            height: 200.0,
            width: 200.0,
            color: Colors.yellow,
          )
        ],
      );




// TODO One child on top of another using Positioned

 _stackUsingPosition()=>Container(
        height: 400.0,
        //color: Colors.yellow,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: 300.0,
                width: 300.0,
                color: Colors.red,
              ),
              Positioned(
                top: 0.0,
                child: Container(
                  height: 250.0,
                  width: 250.0,
                  color: Colors.green,
                ),
              ),

            ],
          ),
        ),
      );


// TODO Playing with Positioned

 _platingWithPositioned()=>Container(
        height: 400.0,
        //color: Colors.yellow,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: 300.0,
                width: 300.0,
                color: Colors.red,
              ),
              Positioned(
                top: 0.0,
                bottom: 0.0,
                child: Container(
                  height: 250.0,
                  width: 250.0,
                  color: Colors.green,
                ),
              ),

            ],
          ),
        ),
      );

// TODO Playing with Positioned
 _playingWithPositioned()=>Container(
        height: 400.0,
        width: 350.0,
        //color: Colors.yellow,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: 300.0,
                width: 200.0,
                color: Colors.red,
              ),
              Positioned(
                right: 0.0,
                child: Container(
                  height: 250.0,
                  width: 150.0,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      );



}

