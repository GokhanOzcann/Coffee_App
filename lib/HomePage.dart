import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          backgroundColor: Colors.black45,

          title: Center(child: Text('CoffeShop ')),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(child: CircleAvatar(
                radius: 180.0,
                backgroundImage:
                NetworkImage('https://media-cdn.tripadvisor.com/media/photo-s/13/67/8d/3a/best-coffee-bar-in-the.jpg'),
                backgroundColor: Colors.transparent,
              ) ),
              SizedBox(height: 60.0,),
              Container(
                height: 80,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => FourthRoute()));
                  },
                  child: Text(
                    'BAŞLA',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ] 
          ),
        ),
      ),
    );
  }
}