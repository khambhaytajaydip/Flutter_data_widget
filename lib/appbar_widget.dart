import 'package:flutter/material.dart';

//TODO STEP 7 uncomment STEP 7 and comment STEP 8 for add search view on Appbar
//class AppBarWidget extends StatefulWidget {

//TODo STEP 8
class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO STEP 1 -> For app bar center show commit this one and uncomment STEP 1
//      appBar: getAppBarCenter(),
      // TODO STEP 2 -> For app bar List icon  uncomment STEP 2
//      appBar: getAppBarListAction(),
      // TODO STEP 3 -> For app bar theame set uncomment STEP 3
//      appBar: getDiffertTheamerToolbae(),
      // TODO STEP 4-> For app bar title sub title uncomment STEP 4
//      appBar: getTitleSubtitle(),
      //TODO STEP 5 -> for app bar image show uncomment STP 5
       appBar: getAppBarImage(),
    );
  }

// TODO STEP 6 for Searchable Appbar uncomment STEP 6 and STEP 7
//  @override
//  State<StatefulWidget> createState() => getAppBarCenter();

// TODO Simple AppBar with Centre Title
  getAppBarCenter() {
    return AppBar(
      backgroundColor: Colors.red,
      title: new Text(
        "Title",
      ),
      elevation: 4.0,
      centerTitle: true,
    );
  }

/*
*  TODO App Bar with a List of Action Buttons
*/
  getAppBarListAction() {
    return AppBar(
      title: new Text("Title"),
      actions: <Widget>[
        IconButton(
          icon: new Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: new Icon(Icons.add),
          onPressed: () {},
        ),
      ],
    );
  }

/*
* TODO AppBar with Different IconTheme & TextTheme
*/
  getDiffertTheamerToolbae() => AppBar(
        backgroundColor: Colors.blueAccent,
        title: new Text("Title"),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        textTheme: TextTheme(
          title: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      );

// TODO AppBar with only Title and Subtitle at Centre

  getTitleSubtitle() => AppBar(
        automaticallyImplyLeading: false, // hide back arrow
        title: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Title",
                style: TextStyle(fontSize: 18.0),
              ),
              new Text(
                "subtitle",
                style: TextStyle(fontSize: 14.0),
              ),
            ],
          ),
        ),
      );

// TODO AppBar with image

  getAppBarImage() => AppBar(
        automaticallyImplyLeading: false, // hide back arrow
        backgroundColor: Colors.yellow,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            new FlutterLogo(),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: new Text(
                "Title with image",
              ),
            ),
          ],
        ),
      );
}

//TODO searchable appbar

class _SearchAppBarState extends State {
  Widget appBarTitle = new Text("AppBar Title");
  Icon actionIcon = new Icon(Icons.search);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:
          new AppBar(centerTitle: true, title: appBarTitle, actions: <Widget>[
        new IconButton(
          icon: actionIcon,
          onPressed: () {
            setState(() {
              if (this.actionIcon.icon == Icons.search) {
                this.actionIcon = new Icon(Icons.close);
                this.appBarTitle = new TextField(
                  style: new TextStyle(
                    color: Colors.white,
                  ),
                  decoration: new InputDecoration(
                      prefixIcon: new Icon(Icons.search, color: Colors.white),
                      hintText: "Search...",
                      hintStyle: new TextStyle(color: Colors.white)),
                );
              } else {
                this.actionIcon = new Icon(Icons.search);
                this.appBarTitle = new Text("AppBar Title");
              }
            });
          },
        ),
      ]),
    );
  }
}
