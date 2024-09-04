import 'package:qintproject/model/question.dart';

class DataSource {
  final String url = 'assets/exdata.json';

  Future<Questions> getQuestionList() async {
    // final response = await rootBundle.loadString(url);
    final Map<String, dynamic> response = {
      "questions": [
        {
          "question_id": 1,
          "contents": "π를 제대로 기술한 것은?",
          "options": [
            {
              "answer_id": 1,
              "text": "π는 원주율로, 원의 둘레와 지름의 비율입니다."
            },
            {
              "answer_id": 2,
              "text": "π는 삼각형의 내각 합계입니다."
            },
            {
              "answer_id": 3,
              "text": "π는 자연수 3과 같습니다."
            },
            {
              "answer_id": 4,
              "text": "π는 원의 반지름의 제곱에 비례합니다."
            }
          ]
        }
      ]
    };

    return Questions.fromJson(response);
    // return jsonDecode(response).data.map<Questions>((json) => Questions.fromJson(json)).toList();
  }
}