import 'package:flutter/material.dart';
import 'package:quiz/models/answers.dart';
import 'package:quiz/questions/first.dart';

void main() {


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(child: Text('Quiz App',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),textAlign: TextAlign.center,)),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(20),
            child: Text('A quiz is a form of game or mind sport in which players attempt to answer questions correctly. It is a game to test knowledge about a certain subject. In some countries, a quiz is also a brief assessment used in education and similar fields to measure growth in knowledge, abilities, and/or skills.'
            ,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 25),),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(30,0,30,0),
            margin: EdgeInsets.fromLTRB(20,0,20,0),
            child: Text('Quiz Category:Entertainmnet '
              ,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20),),
          ),
          Container(
            height: 100,
            width: 400,
            
            alignment: Alignment.bottomCenter,
            child: FlatButton(
              padding: EdgeInsets.fromLTRB(40,10,40,10),
              color: Colors.orange,
              child: Text('Start QUiz',textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(
                  builder: (context)=>FirstQuestion()
                ),);
              },
            ),
          )
        ],
      ),
       
    );
  }
}

