import 'package:flutter/material.dart';
import 'package:quiz/main.dart';
import 'package:quiz/models/answers.dart';

class QuizResult extends StatelessWidget {
  final score=Answers.score;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(child: Text('Result',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),textAlign: TextAlign.center,)),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Container(
                  child: Text(''),
                ),
                Container(
                  padding: EdgeInsets.all(40),
                  child: Text(' Score \n $score / 30',style: TextStyle(fontSize: 40),),
                ),
              Container(
                child: FlatButton(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  color: Colors.orange,
                  child: Text('Restart Quiz',style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20,color: Colors.white),),
                  onPressed: (){
                    Answers.first=null;
                    Answers.third=null;
                    Answers.second=null;
                    Answers.score=0;
                    Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName),);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
