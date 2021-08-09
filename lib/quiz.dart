import 'question.dart';

class Quiz {
  int _questionNums = 0;

  List<Question> _questionBank = [
    Question(q: "Peanuts are not nuts!", a: true),
    Question(q: "People may sneeze or cough while sleeping deeply.", a: false),
    Question(q: "Copyrights depreciate over time.", a: true),
    Question(q: "Emus can’t fly.", a: true),
    Question(q: "Electrons move faster than the speed of light.", a: false),
    Question(q: "There is no snow on Minecraft.", a: false),
    Question(q: "Light travels in a straight line.", a: true),
    Question(q: "The Mona Liza was stolen from the Louvre in 1911.", a: true),
    Question(
        q: "The Los Angeles Lakers won the 2020 NBA Championship.", a: true),
    Question(
        q: "Hamilton the musical is the first Broadway show ever written about Hamilton.",
        a: false)
  ];

  void nextQustion() {
    if (_questionNums < _questionBank.length) {
      _questionNums++;
    } else {}
  }

  String? getQuestionText() {
    return _questionBank[_questionNums].questionText;
  }

  bool? getAnswer() {
    return _questionBank[_questionNums].questionAnswer;
  }

  bool isFinished() {
    if (_questionNums >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNums = 0;
  }
}
