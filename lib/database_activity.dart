import 'dart:io';

import 'package:flutter/material.dart';
import 'package:test_flutter/dialog/add_dog_dialog.dart';
import 'package:test_flutter/model/dog.dart';
import 'database/database_presenter.dart';

class DatabaseActivity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DatabaseState();
  }
}

class DatabaseState extends State<DatabaseActivity> implements DatabaseConract {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Database"),
          actions: <Widget>[
        IconButton(
          icon: new Icon(Icons.add),
          onPressed: () {
            _openAddUserDialog();
          },
        ),
      ]),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.grey,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: Text("Id"),
                    flex: 1,
                  ),
                  Flexible(
                    child: Text("Name"),
                    flex: 3,
                  ),
                  Flexible(
                    child: Text("Age"),
                    flex: 1,
                  ),
                  Flexible(
                    child: Text("Edit"),
                    flex: 1,
                  ),
                  Flexible(
                    child: Text("Delete"),
                    flex: 1,
                  ),
                ],
              ),
            ),
            flex: 1,
          ),
          Expanded(
            flex: 15,
            child: FutureBuilder<List<Dog>>(
              future: _databasePresenter.getDogs(),
              builder: (context, snapshot) {
                var data = snapshot.data;
                if (data == null || data.length == 0) {
                  return Container();
                }
                print(data.length);
                return snapshot.hasData
                    ? DogList(data, _databasePresenter,this)
                    : Center(child: CircularProgressIndicator());
              },
            ),
          ),
        ],
      ),
    );
  }

  DatabasePresenter _databasePresenter;

  @override
  void initState() {
    super.initState();
    _databasePresenter = DatabasePresenter(this);
  }

  @override
  void screenUpdate() {
    setState(() {});
  }

  displayRecord() {
    setState(() {});
  }

  Future _openAddUserDialog() async {
    showDialog(
      context: context,
      builder: (BuildContext context) =>
          new AddDogDialog().buildAboutDialog(context, this, false, null),
    );
    setState(() {});
  }
}

class DogList extends StatelessWidget {
  List<Dog> dogsList;
  DatabasePresenter _databasePresenter;
  DatabaseState databaseState;

  DogList(List<Dog> this.dogsList, DatabasePresenter this._databasePresenter, this.databaseState,
      {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dogsList == null ? 0 : dogsList.length,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              child: Center(
                  child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment:CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: Text(dogsList[index].id.toString()),
                    flex: 1,
                  ),
                  Flexible(
                    child: Text(dogsList[index].name),
                    flex: 3,
                  ),
                  Flexible(
                    child: Text(dogsList[index].age),
                    flex: 1,
                  ),
                  Flexible(
                    child: IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        edit(dogsList[index], context);
                      },
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    child: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        _databasePresenter.delete(dogsList[index]);

                        _databasePresenter.updateScreen();

                      },
                    ),
                    flex: 1,
                  )
                ],
              )),
              padding: EdgeInsets.all(10.0),
            ),
          );
        });
  }
  edit(Dog dog, BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) =>
          new AddDogDialog().buildAboutDialog(context, databaseState, true, dog),
    );

    _databasePresenter.updateScreen();
  }

}
