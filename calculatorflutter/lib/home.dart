import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var result = "";

  Widget CalButton(var textt){
  return ElevatedButton(onPressed: (){
    setState(() {
      if(textt == 'clear')
      {
        result = "";
      }
      else if(textt == '=')
      {
        output();
      }
      else{
        result = result+textt;
      }
    });
  }, child: Text(textt));
}

output(){
  Parser p = new Parser();
  Expression exp = p.parse(result);
  ContextModel cm = new ContextModel();
  double eval = exp.evaluate(EvaluationType.REAL, cm);
  setState(() {
    result=eval.toString();
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(toolbarHeight: 80, title: Center(child: Text("Calculator"))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent)
              ),
              child: Center(child: SingleChildScrollView(child: Text(result,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)))),
            Container(
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent)
              ),
              child: Center(child:Column(children:[
                SizedBox(height:20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CalButton('1'),
                    CalButton('2'),
                    CalButton('3'),
                    CalButton('4'),
                  ],
                ),
                SizedBox(height:20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CalButton('5'),
                    CalButton('6'),
                    CalButton('7'),
                    CalButton('8'),
                  ],
                ),
                SizedBox(height:20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CalButton('9'),
                    CalButton('0'),
                    CalButton('+'),
                    CalButton('-'),
                  ],
                ),
                SizedBox(height:20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CalButton('*'),
                    CalButton('/'),
                    CalButton('clear'),
                    CalButton('='),
                  ],
                ),
                SizedBox(height:20),
              ]),),
            ),
            
          ],
        ),
      )
    );
  }
}

