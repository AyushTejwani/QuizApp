import 'package:flutter/cupertino.dart';

class QuestionWidget extends StatelessWidget {
  final question;
  QuestionWidget(this.question);

  @override
  Widget build(BuildContext context) {


    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
      child: Text(question,textAlign: TextAlign.center,style: TextStyle(fontSize: 28,
      fontWeight: FontWeight.bold),),
    );
  }
}
