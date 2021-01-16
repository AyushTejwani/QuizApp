import 'package:flutter/material.dart';
import 'package:quiz/QuizEnd/result.dart';
import 'package:quiz/models/answers.dart';
import 'file:///D:/Software%20dev/Flutter/Projects/akudo/quiz/lib/widgets/questionWidget.dart';

import '../widgets/OptionWidget.dart';

class ThirdQuestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(child: Text('Question One',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),textAlign: TextAlign.center,)),
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          children: [
            QuestionWidget('This is the third question?'),
            Container(
              child: Column(
                children: [  OptionWidget('option1','option2','option3','option4',3),
                  ],
              ),
            ),
            SizedBox(
              height: 100,
              width: double.infinity,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(

                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(40,10,40,10),
                    child: Text('Previous',style: TextStyle(color: Colors.white),),
                    color: Colors.orange,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),

                Container(
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(50,10,50,10),
                    child: Text('Next',style: TextStyle(color: Colors.white),),
                    color: Colors.orange,
                    onPressed: () {
                      Answers.calculateResult();
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>QuizResult()
                      ),);
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
