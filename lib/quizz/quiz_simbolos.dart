
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import 'package:travel_sb/quizz_class/q_simbolos.dart';
import 'package:travel_sb/quizz_class/question_simbolos.dart';
import 'package:travel_sb/widget/app_large_text.dart';

class QuizzSimbolos extends StatefulWidget {
  const QuizzSimbolos({super.key});

  @override
  State<QuizzSimbolos> createState() => _QuizzSimbolosState();
}

class _QuizzSimbolosState extends State<QuizzSimbolos> {
  int totalQuestions = 5;
  int totalOptions = 4;
  int questionIndex = 0;
  int progressIndex = 0;
  Quiz quiz = Quiz(name: 'Quizz de Capitales', questions: []);

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/simbolos.json');
    final List<dynamic> data = await json.decode(response);
    List<int> optionList = List<int>.generate(data.length, (i) => i);
    List<int> questionAdded = [];

    while (true) {
      optionList.shuffle();
      int answer = optionList[0];
      if (questionAdded.contains(answer)) continue;

      List<String> otherOptions = [];
      for (var option in optionList.sublist(1, totalQuestions)) {
        otherOptions.add(data[option]['simbolo']);
      }

      Question question = Question.fromJson(data[answer]);
      question.addOptions(otherOptions);
      quiz.questions.add(question);

      if (quiz.questions.length >= totalQuestions) break;
    }

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  void _optionSelected(String selected) {
    quiz.questions[questionIndex].selected = selected;
    if (selected == quiz.questions[questionIndex].aswer) {
      quiz.questions[questionIndex].correct = true;
      quiz.right += 1;
    }
    progressIndex += 1;
    if (questionIndex < totalQuestions - 1) {
      questionIndex += 1;
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) => _buildResultDialog(context));
    }

    setState(() {});
  }

  Widget _buildResultDialog(BuildContext context) {
    return AlertDialog(
      title: Text('Resultados', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
      backgroundColor: Color.fromARGB(255, 11, 11, 11),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Preguntas Totales: $totalQuestions', style: TextStyle(color: Colors.white),),
          Text('Correctas: ${quiz.right}', style: TextStyle(color: Colors.white),),
          Text('Incorrectas: ${(totalQuestions - quiz.right)}', style: TextStyle(color: Colors.white),),
          Text('Porcentaje: ${quiz.porcent}%', style: TextStyle(color: Colors.white),),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => ResultsSimbolos(
                            quiz: quiz,
                          ))));
            },
            child: Text('Ver Resultados', style: TextStyle(color: Colors.amber, fontSize: 20),))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.indigo,
      // appBar: AppBar(
      //   // backgroundColor: Colors.indigo,
      //   elevation: 0,
      //   title: Text('Quizz Capitales'),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
         Container(
          margin: EdgeInsets.only(top: 40),
          child: Row(
          
          children: [
            IconButton.outlined(
              iconSize: 40,
              color: Colors.pink,
              onPressed: (){
                Navigator.pop(context);
              },
             icon:Icon( Icons.keyboard_arrow_left),
             ),
            //  AppLargeText(text: 'Ciencias'),
            Text('Ciencias', style: TextStyle(
              fontSize: 35,
              color: Colors.pink
            ),)
          ],
         ),
         ),
          Container(
            
            margin: EdgeInsets.only(top: 40, left: 30,right: 30),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: LinearProgressIndicator(
                color: Colors.amber,
                backgroundColor: Colors.pink,
                value: progressIndex / totalQuestions,
                minHeight: 20,
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 470),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
              child: quiz.questions.isNotEmpty
                  ? Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            child: Text(
                              quiz.questions[questionIndex].question,
                              style: TextStyle(fontSize: 27),
                            ),
                          ),
                          Flexible(
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: totalOptions,
                              itemBuilder: (_, index) {
                                return Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromARGB(120, 0, 0, 0), // Cambia el color del borde
                                        width: 1, // Cambia el ancho del borde
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ListTile(
                                    onTap: () {
                                      _optionSelected(quiz
                                          .questions[questionIndex]
                                          .options[index]);
                                    },
                                    leading: Text(
                                      '${index + 1}',
                                      style: TextStyle(fontSize: 18),
                                      ),
                                    title: Text(
                                      quiz.questions[questionIndex]
                                          .options[index],
                                          style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    )
                  : CircularProgressIndicator(),
            ),
          ),
          TextButton(
              onPressed: () {
                _optionSelected('Saltada sin rpta');
              },
              child: Text('Ninguna de las Anteriores',
               style: TextStyle(fontSize: 20, color: Colors.pink),))
        ],
      ),
    );
  }
}

class ResultsSimbolos extends StatelessWidget {
  const ResultsSimbolos({super.key, required this.quiz});
  final Quiz quiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 46, 25, 208), // Cambia el color aquí
        ),
        title: AppLargeText(text: 'Resultados'),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        surfaceTintColor: Colors.amberAccent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(
                  left: 23, right: 23, top: 12, bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.indigo.shade50,
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Preguntas: ${quiz.questions.length}',
                      style: TextStyle(fontSize: 20)),
                  Text('Correctas: ${quiz.porcent}%',
                      style: TextStyle(fontSize: 20)

                      // style: Theme.of(context).textTheme.bodyText1,
                      ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: quiz.questions.length,
                  itemBuilder: (_, index) {
                    return Card(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      color: quiz.questions[index].correct
                          ? Colors.green.shade200
                          : Color.fromARGB(255, 152, 206, 232),
                      child: ListTile(
                        leading: quiz.questions[index].correct
                            ? Icon(Icons.check, color: Colors.green.shade900)
                            : Icon(Icons.close, color: Colors.red.shade900),
                        title: Text(quiz.questions[index].question),
                        subtitle: Text(quiz.questions[index].selected),
                        trailing: Text(quiz.questions[index].aswer),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
