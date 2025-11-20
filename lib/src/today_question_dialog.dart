import 'package:flutter/material.dart';

class TodayQuestionDialog {
  static void show(BuildContext context, String question) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            constraints: BoxConstraints(maxHeight: 350),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "오늘의 질문",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  question,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),

                SizedBox(height: 30),

                TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: "답변을 입력하세요...",
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // TODO: 답변 저장
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                  ),
                  child: Text("답변 제출"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
