import 'package:flutter/material.dart';
import 'package:quiz/models/answers.dart';

class OptionWidget extends StatefulWidget {

  var quesNo;
  final optionText1,optionText2,optionText3,optionText4;
  OptionWidget(this.optionText1,this.optionText2,this.optionText3,this.optionText4,this.quesNo);
  @override
  _OptionWidgetState createState() => _OptionWidgetState(this.optionText1,this.optionText2,this.optionText3,this.optionText4,this.quesNo);
}

class _OptionWidgetState extends State<OptionWidget> {
  var quesNo;
 var valueNo;
  final optionText1,optionText2,optionText3,optionText4;
  _OptionWidgetState(this.optionText1,this.optionText2,this.optionText3,this.optionText4,this.quesNo);
  bool first=false;
  bool second=false;
  bool third=false;
  bool fourth=false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 40,
          child:Row(
            children: [
              Checkbox(
                value: first,
                onChanged: (val){
                  setState(() {
                    first=true;
                    second=false;

                    third=false;
                    fourth=false;
                  });
                  if(quesNo==1)
                    {
                      Answers.first=1;
                    }
                  if(quesNo==2)
                  {
                    Answers.second=1;
                  }
                  if(quesNo==3)
                  {
                    Answers.third=1;
                  }
                  print('question Number: '+quesNo.toString());
                  print('first:' + Answers.first.toString());
                  print('second:' + Answers.second.toString());
                  print('third:' + Answers.third.toString());
                  print('fourth:' + Answers.score.toString());
                },
    ),


              Text(optionText1)
            ],
          ),
        ),
        Card(
          elevation: 40,
          child:Row(
            children: [
              Checkbox(
            value: second,
            onChanged: (val){
              setState(() {
                first=false;
                second=true;
                third=false;
                fourth=false;
              });
              if(quesNo==1)
              {
                Answers.first=2;
              }
              if(quesNo==2)
              {
                Answers.second=2;
              }
              if(quesNo==3)
              {
                Answers.third=2;
              }
              print('question Number: '+quesNo.toString());
              print('first:' + Answers.first.toString());
              print('second:' + Answers.second.toString());
              print('third:' + Answers.third.toString());
              print('fourth:' + Answers.score.toString());
            },),
            Text(optionText2)
            ],
          ),
        ),
        Card(
          elevation: 40,
          child:Row(
            children: [
              Checkbox(
                  value: third,
                  onChanged: (val){
                    setState(() {
                      first=false;
                      second=false;
                      third=true;
                      fourth=false;
                    });
                    if(quesNo==1)
                    {
                      Answers.first=3;
                    }
                    if(quesNo==2)
                    {
                      Answers.second=3;
                    }
                    if(quesNo==3)
                    {
                      Answers.third=3;
                    }
                    print('question Number: '+quesNo.toString());
                    print('first:' + Answers.first.toString());
                    print('second:' + Answers.second.toString());
                    print('third:' + Answers.third.toString());
                    print('fourth:' + Answers.score.toString());
                  },

              ),
              Text(optionText3)
            ],
          ),
        ),
        Card(
          elevation: 40,
          child:Row(
            children: [
              Checkbox(
                value: fourth,
                onChanged: (val){



                  setState(() {
                    first=false;
                    second=false;
                    third=false;
                    fourth=true;
                  });
                  if(quesNo==1)
                  {
                    Answers.first=4;
                  }
                  if(quesNo==2)
                  {
                    Answers.second=4;
                  }
                  if(quesNo==3)
                  {
                    Answers.third=4;
                  }
                  print('question Number: '+quesNo.toString());
                  print('first:' + Answers.first.toString());
                  print('second:' + Answers.second.toString());
                  print('third:' + Answers.third.toString());
                  print('fourth:' + Answers.score.toString());
                },
              ),
              Text(optionText4)
            ],
          ),
        ),
      ],
    );
  }
}
