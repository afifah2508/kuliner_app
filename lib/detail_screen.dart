import 'package:flutter/material.dart';
import 'package:kuliner_app/Kuliner.dart';

class DetailScreen extends StatelessWidget {
  final Kuliners kuliners;

  const DetailScreen({ this.kuliners});
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(kuliners.photo),
                SafeArea(
                  child: Row (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      IconButton(icon: Icon(Icons.arrow_back),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                kuliners.name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.grade_rounded ),
                      SizedBox(height: 8.0),
                      Text(kuliners.rating)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.monetization_on),
                      SizedBox(height: 8.0,),
                      Text(kuliners.price)
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                kuliners.description,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Container(
              height: 160,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: kuliners.imgurl.map((url){
                    return Padding (
                      padding: EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(url),
                      ),
                    );
                  }).toList()
              ),
            ),
          ],
        ),
      ),
    );
  }
}