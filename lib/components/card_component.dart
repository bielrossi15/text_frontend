import 'package:flutter/material.dart';
import 'package:mup/model/card.dart';
import 'package:mup/constants.dart';

import '../constants.dart';
import '../constants.dart';

class CardWidget extends StatelessWidget {
  CardWidget({@required this.subjects, @required this.press});

  TextSubjects subjects;
  final Function press;

  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
        child: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, 23),
            blurRadius: 17,
            spreadRadius: -30,
            color: Color(0xFFaabbcc))
      ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Column(
            children: [
              SizedBox(height: 10),
              Expanded(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "asset${this.subjects.ilustration}",
                  fit: BoxFit.scaleDown,
                ),
              )),
              SizedBox(height: 15),
              Text(
                this.subjects.textSubjectTitle,
                style: Theme.of(context)
                    .textTheme
                    .title
                    .copyWith(fontSize: 20, color: Color(0xffcc2904)),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    ));
  }
}
