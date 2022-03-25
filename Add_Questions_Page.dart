// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../Data_Layer/data_model/Question_Model.dart';

class AddQuestionsPage extends StatelessWidget {
  AddQuestionsPage({Key? key}) : super(key: key);
  final TextEditingController _questionController = TextEditingController();
  final TextEditingController _correctAnswerController =
      TextEditingController();
  final TextEditingController _answer1Controller = TextEditingController();
  final TextEditingController _answer2Controller = TextEditingController();
  final TextEditingController _answer3Controller = TextEditingController();
  final TextEditingController _answer4Controller = TextEditingController();
  final TextEditingController _answer5Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Show my questions"),
                    ),
                  ),
                  Column(
                    children: [
                      MyQTF(
                        controller: _questionController,
                        leading: "Q: ",
                        hintText: " Enter a question ...",
                      ),
                      MyQTF(
                        controller: _correctAnswerController,
                        leading: "CR: ",
                        hintText: " Enter a Correct Answer ...",
                      ),
                      MyQTF(
                        controller: _answer1Controller,
                        leading: "A1: ",
                        hintText: " Enter a Answer 1 ...",
                      ),
                      MyQTF(
                        controller: _answer2Controller,
                        leading: "A2: ",
                        hintText: " Enter a Answer 2 ...",
                      ),
                      MyQTF(
                        controller: _answer3Controller,
                        leading: "A3: ",
                        hintText: " Enter a Answer 3 ...",
                      ),
                      MyQTF(
                        controller: _answer4Controller,
                        leading: "A4: ",
                        hintText: " Enter a Answer 4 ...",
                      ),
                      MyQTF(
                        controller: _answer5Controller,
                        leading: "A5: ",
                        hintText: " Enter a Answer 5 ...",
                      ),
                    ],
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Finish"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          QuestionModel question = QuestionModel(
                            questionName: _questionController.text.trim(),
                            correctAnswer: _correctAnswerController.text.trim(),
                            answer1: _answer1Controller.text.trim(),
                            answer2: _answer2Controller.text.trim(),
                            answer3: _answer3Controller.text.trim(),
                            answer4: _answer4Controller.text.trim(),
                            answer5: _answer5Controller.text.trim(),
                          );
                          print(question.answer1);
                        },
                        child: Text("New"),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyQTF extends StatelessWidget {
  const MyQTF({
    Key? key,
    this.hintText,
    this.leading,
    this.controller,
  }) : super(key: key);
  final String? hintText;
  final String? leading;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(leading.toString()),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.2,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
            ),
          ),
        ),
      ],
    );
  }
}
