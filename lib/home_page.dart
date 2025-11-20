import 'package:flutter/material.dart';
import 'src/question_list.dart';
import 'src/today_question_dialog.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라일락"),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
          )
        ],
      ),

      body: Stack(
        children: [
          /// -------------------------
          /// 1) 창문(날씨 자리)
          /// -------------------------
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 20),
              width: 200,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(child: Text("창문/날씨 자리")),
            ),
          ),

          /// -------------------------
          /// 2) 캐릭터 자리
          /// -------------------------
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.person, size: 120, color: Colors.purple),
                Text("캐릭터 자리", style: TextStyle(fontSize: 18)),
              ],
            ),
          ),

          /// -------------------------
          /// 3) 달력 버튼
          /// -------------------------
          Positioned(
            bottom: 20,
            left: 20,
            child: FloatingActionButton.extended(
              onPressed: () {
                Navigator.pushNamed(context, '/calendar');
              },
              icon: Icon(Icons.calendar_month),
              label: Text("달력"),
            ),
          ),

          /// -------------------------
          /// 4) 말풍선 버튼 (오늘의 질문)
          /// -------------------------
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                TodayQuestionDialog.show(
                  context,
                  QuestionRepository.getRandomQuestion(),
                );
              },
              child: Icon(Icons.chat_bubble),
            ),
          ),
        ],
      ),
    );
  }
}
