import 'package:flutter/material.dart';

import 'detail_screen.dart';
import 'dummy.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ("Kuliner Indonesia"),
      ),
      body: ListView(
        children: kulinerList.map((place){
          return FlatButton(
          onPressed:(){
            Navigator.push(context,MaterialPageRoute(builder: (context){
              return DetailScreen(kuliners:place,);
           }));

           },
           child: Card(
             child: Row(
              children: <Widget>[
                Expanded(
                  flex : 1, child : Image.asset(place.photo)),
                Expanded(
                   flex : 2,
                   child : Padding(
                    padding:EdgeInsets.all(12.0),
                     child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisSize: MainAxisSize.min,
                       children: <Widget>[
                       Text(place.name, style: TextStyle(fontSize: 16.0),
                       ),
                      SizedBox(
                      height: 15,
                      ),
                      Text(place.price)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
          );
  }).toList()),
  );
  }
  }

