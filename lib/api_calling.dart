import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'drink_details.dart';

String txtData = "Hey";

class ApiCalling extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ApiCallingState();
  }
}

class ApiCallingState extends State<ApiCalling> {
  var api = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail";
  var res, drinks;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.greenAccent,
        Colors.white,
      ])),
      child: Scaffold(
        backgroundColor: Colors.grey,

        appBar: AppBar(),
        body: Center(
            child: res != null
                ? ListView.builder(
                    itemCount: drinks.length,
                    itemBuilder: (context, index) {
                      var drink = drinks[index];
                      return ListTile(
                        leading: Hero(
                          tag: drink["idDrink"],
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              drink["strDrinkThumb"] ??
                                  "http://www.4motiondarlington.org/wp-content/uploads/2013/06/No-image-found.jpg",
                            ),
                          ),
                        ),
                        title: Text(
                          "${drink["strDrink"]}",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        subtitle: Text(
                          "${drink["idDrink"]}",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {

                          Navigator.push(context, MaterialPageRoute(
                            builder:(context) => DrinkDetails(drink:drink)
                          ));

                        },
                      );
                    },
                  )
                : CircularProgressIndicator(backgroundColor: Colors.blue)),
      ),
    );
  }

  @override
  void initState() {
    fetchData();
  }

  fetchData() async {
    res = await http.get(api);
    drinks = jsonDecode(res.body)["drinks"];
    print(jsonDecode(res.body)["drinks"].toString());
    setState(() {});
  }
}
