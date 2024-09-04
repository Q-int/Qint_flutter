import 'package:qintproject/dataSource/data_source.dart';

import '../model/question.dart';

class QuestionRepository{
  final DataSource _dataSource = DataSource();

  Future<Questions> getQuestionList() {
    return _dataSource.getQuestionList();
  }
}