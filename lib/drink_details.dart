import 'package:flutter/material.dart';

class DrinkDetails extends StatelessWidget {
  final drink;

  const DrinkDetails({Key key, @required this.drink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: drink["idDrink"],
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: NetworkImage(
                    drink["strDrinkThumb"],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "ID: ${drink["idDrink"]}",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "${drink["strDrink"]}",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
