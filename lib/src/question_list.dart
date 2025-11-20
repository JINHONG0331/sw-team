// lib/src/question_list/questions.dart
import 'dart:math';

class QuestionRepository {
  static final List<String> questions = [   //질문 리스트
    "내가 입대를 했을 때 어떤 기분이었나요?",
    "내가 전역을 했을 때 어떤 기분이었나요?",
  ];

  static String getRandomQuestion() {       //랜덤 호출 함수
    final random = Random();
    return questions[random.nextInt(questions.length)];
  }
}
