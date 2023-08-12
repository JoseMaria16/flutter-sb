
// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps

class Question {
  late String country;
  String question = "Capital de: ";
  late String aswer;
  List<String> options = [];
  String selected = 'Saltada sin rpta';
  bool correct = false;

  Question.fromJson(Map<String, dynamic> json)
  : country = json['country'],
    aswer = json['capital'];

  void addOptions(List<String> newOptions) {
    question += '${country}';
    options.add(aswer);
    options.addAll(newOptions);
    options.shuffle();
    
  }

}