import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(),
        body: Center(
            child:

                // TODO STEP 1
                 _containerRound()));

                // TODO STEP 2 comment all STEP only uncomment STEP 2
//               _containerFlutterLogo(context)));

                // TODO STEP 3 comment all other STEP only uncomment STEP 3
//               _containerShapeDecoration(context)));

                // TODO STEP 4 comment all other STEP only uncomment STEP 4
//               _roundCornder(context)));

                //TODO STEP 5 comment all other STEP only uncomment STEP 5
//               _containerAlignmenProperty()));

                // TODO STEP 6 comment all other STEP only uncomment STEP 6
//               _containerWithBoxConstrain()));

                //TODO STEP 7 comment all other STEP only uncomment STEP 7
//               _containerBoxShadow()));

                //TODO STEP 8 comment all other STEP only uncomment step 8
//               _containerImageRoundBorder()));

                //TODO STEP 9 comment all other STEp only uncomment STEP 9
//                _constarainCirculerContainer()));

                //TODO STEP 10 comment all other STEP only uncomment STEP 10
//                _containerRediusLeftRightRedius()));

                //TODO STEP 11 commentr all other STEP only uncomment STEP 11
//                _containerTopBottomRedious()));
  }

//TODO Container simple round box

  _containerRound() => Container(
        height: 200.0,
        width: 200.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
          color: Colors.red,
        ),
        child: Text('Hello'),
      );

//TODO Container containing Flutter Flutter
  _containerFlutterLogo(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(25.0),
        decoration: FlutterLogoDecoration(),
      );

// TODO Container with ShapeDecoration (Red Border and Shadow)
  _containerShapeDecoration(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(25.0),
        decoration: new ShapeDecoration(
          color: Colors.white,
          shadows: <BoxShadow>[
            BoxShadow(color: Colors.black, blurRadius: 15.0)
          ],
          shape: new Border.all(
            color: Colors.yellow,
            width: 8.0,
          ),
        ),
        child: Center(
            child: const Text('Hello Flutter', textAlign: TextAlign.center)),
      );

//  TODO Rounded Container
  _roundCornder(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(25.0),
        decoration: new BoxDecoration(
          color: Colors.yellow,
          borderRadius: new BorderRadius.circular(55.0),
          border: new Border.all(
            width: 5.0,
            color: Colors.red,
          ),
        ),
        child: Center(
            child: const Text('Hello Flutter', textAlign: TextAlign.center)),
      );

// TODO Container with Alignment property

  _containerAlignmenProperty() => Container(
      margin: EdgeInsets.all(20.0),
      height: 300.0,
      color: Colors.red,
      alignment: Alignment.topRight,
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: FlutterLogo(
          size: 200.0,
        ),
      ));

// TODO Container with Box Constraints
  _containerWithBoxConstrain() => Container(
        margin: EdgeInsets.all(20.0),
        constraints: BoxConstraints(maxWidth: 400.0, minWidth: 200.0),
        width: 0.0,
        alignment: Alignment.topCenter,
        child: Image.network('https://picsum.photos/500/400'),
      );

// TODO Container with List of BoxShadow

  _containerBoxShadow() => Container(
        height: 100.0,
        width: 200.0,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.red, blurRadius: 12.0),
          BoxShadow(color: Colors.green, blurRadius: 40.0)
        ]),
      );

// TODO Container with Image and Rounded Border
  _containerImageRoundBorder() => Container(
        height: 200.0,
        width: 200.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            image: DecorationImage(
                fit: BoxFit.none,
                image: NetworkImage('https://picsum.photos/id/237/200/300'))),
      );

// TODO Circular Container

  _constarainCirculerContainer() => Container(
        height: 200.0,
        width: 200.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Colors.red,
        ),
        child: Text('Hello'),
      );

// TODO Container with Horizontal Radius of Left Radius and Right Radius
  _containerRediusLeftRightRedius() => Container(
        height: 200.0,
        width: 200.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(
              left: Radius.circular(20.0), right: Radius.circular(80.0)),
          color: Colors.red,
        ),
        child: Text('Hello'),
      );

// TODO Container with Vertical Radius of Top Radius and Bottom Radius

  _containerTopBottomRedious() => Container(
        height: 200.0,
        width: 200.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(20.0), bottom: Radius.circular(80.0)),
          color: Colors.red,
        ),
        child: Text('Hello'),
      );
}
