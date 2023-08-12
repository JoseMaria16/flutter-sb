import 'package:travel_sb/quizz_class/question_europa.dart';


class Quiz {
  String name;
  List<Question> questions;
  int right = 0;

  Quiz({required this.name, required this.questions});


  double get porcent => (right / questions.length) * 100;
  


}