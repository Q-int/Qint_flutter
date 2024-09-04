import 'package:flutter/cupertino.dart';
import 'package:qintproject/repository/question_repository.dart';

import '../model/question.dart';

class QuestionViewModel with ChangeNotifier {
  final QuestionRepository _questionRepository = QuestionRepository();

  Questions _questionList = Questions(questions: []);
  Questions get questionList => _questionList;

  QuestionViewModel(){
    _getQuestionList();
  }

  Future<void> _getQuestionList() async {
    _questionList = await _questionRepository.getQuestionList();
    notifyListeners();
  }
}