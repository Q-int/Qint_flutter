// class Questions {
//   final List<Question> questions;
//
//   Questions({required this.questions});
//
//   factory Questions.fromJson(Map<String, dynamic> json){
//     return Questions(questions: json['questions'].map<Question>((i) => Questions.fromJson(i)).toList());
//   }
// }
//
// class Question {
//   final int questionId;
//   final String contents;
//   final List<Option> options;
//
//   Question({required this.questionId, required this.contents, required this.options});
//
//   factory Question.fromJson(Map<String, dynamic> json){
//     return Question(questionId: json['question_id'], contents: json['contents'], options: json['options'].map<Option>((i) => Option.fromJson(i)).toList());
//   }
// }
//
// class Option{
//   final int answerId;
//   final String text;
//
//   Option({required this.answerId, required this.text});
//
//   factory Option.fromJson(Map<String, dynamic> json){
//     return Option(answerId: json['answer_id'], text: json['text']);
//   }
// }

class Questions {
  List<Question>? questions;

  Questions({this.questions});

  Questions.fromJson(Map<String, dynamic> json) {
    if (json['questions'] != null) {
      questions = <Question>[];
      json['questions'].forEach((v) {
        questions!.add(new Question.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.questions != null) {
      data['questions'] = this.questions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Question {
  int? questionId;
  String? contents;
  List<Options>? options;

  Question({this.questionId, this.contents, this.options});

  Question.fromJson(Map<String, dynamic> json) {
    questionId = json['question_id'];
    contents = json['contents'];
    if (json['options'] != null) {
      options = <Options>[];
      json['options'].forEach((v) {
        options!.add(new Options.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['question_id'] = this.questionId;
    data['contents'] = this.contents;
    if (this.options != null) {
      data['options'] = this.options!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Options {
  int? answerId;
  String? text;

  Options({this.answerId, this.text});

  Options.fromJson(Map<String, dynamic> json) {
    answerId = json['answer_id'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['answer_id'] = this.answerId;
    data['text'] = this.text;
    return data;
  }
}