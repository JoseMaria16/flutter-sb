// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps

class Question {
  late String elemento;
  String question = "Capital de: ";
  late String aswer;
  List<String> options = [];
  String selected = 'Saltada sin rpta';
  bool correct = false;

  Question.fromJson(Map<String, dynamic> json)
  : elemento = json['elemento'],
    aswer = json['simbolo'];

  void addOptions(List<String> newOptions) {
    question += '${elemento}';
    options.add(aswer);
    options.addAll(newOptions);
    options.shuffle();
    
  }

}