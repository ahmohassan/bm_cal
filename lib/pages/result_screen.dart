import 'dart:ui';

import 'package:bm_cal/constants/constants.dart';
import 'package:bm_cal/pages/bodypage.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class ResultScreen extends StatelessWidget {
  final double result;
  ResultScreen({required this.result});

  @override
  Widget build(BuildContext context) {
    // _goRusultScreen() {
    //   // Navigator.pop(
    //   //   context,
    //   //   MaterialPageRoute(
    //   //     builder: (builder) => bodypage(),
    //   //   ),
    //   // );
    //   Navigator.pop(context);
    // }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Result Screen"),
        backgroundColor: const Color(0xFF111328),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          Text(
            'Your Result',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w400,
              color: Colors.grey.shade400,
            ),
          ),
          Expanded(
              child: reuseableWidget(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    result.toStringAsFixed(1),
                    style: const TextStyle(
                      fontSize: 54,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                CommentWidget(result: result),
              ],
            ),
          )),
          // CustomBottom(
          //   onTap: () {
          //     print('object');
          //   },
          //   title: "Re-Calculate",
          // )
          // RawMaterialButton(
          //   onPressed: () {},
          //   fillColor: KBottonContainerColor,
          //   constraints: BoxConstraints().tighten(
          //     width: double.infinity,
          //     height: 56,
          //   ),
          //   child: const Text(
          //     "RE-Calculate",
          //     style: TextStyle(
          //       fontSize: 24,
          //       fontWeight: FontWeight.w500,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}

class CommentWidget extends StatelessWidget {
  const CommentWidget({
    Key? key,
    required this.result,
    // this.comment,
  }) : super(key: key);

  final double result;
  // final String? comment;

  // void _conditionComment() {
  //   String? comment;
  //   if (result < 18) {
  //     comment = "Wow  you are Underweight 😔";
  //   } else if (result > 18 || result < 25) {
  //     comment = "Up normal 😊";
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    String? comment;
    if (result < 18) {
      comment = "Sory you are Underweight please took Some protiens 😔";
    } else if (result > 18 && result < 25) {
      comment = "You are Up normal 😊 ";
    } else if (result > 25 && result < 29) {
      comment = "You are Over Weight 😲 Go for 👟gym ";
    } else {
      comment = "You are Obese 😰 Make More Exercise ";
    }

    return Center(
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Text(
            comment.toString(),
            style: const TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
