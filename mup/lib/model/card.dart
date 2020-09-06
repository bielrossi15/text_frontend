import 'package:flutter/material.dart';

class TextSubjects {

  TextSubjects({
    this.textSubjectTitle,
    this.textSubjectSubtitle,
    this.ilustration,
  });

  String textSubjectTitle;
  String textSubjectSubtitle;
  String ilustration;

}

var newMUPTextSubjects = [
  TextSubjects(
    textSubjectTitle: "Sobre o MUP",
    textSubjectSubtitle: "",
    ilustration: '/images/MUP.png',
  ),
  TextSubjects(
    textSubjectTitle: "Boletim",
    textSubjectSubtitle: "",
    ilustration: '/images/news-paper-icon-15.jpg',
  ),
  TextSubjects(
    textSubjectTitle: "Geral",
    textSubjectSubtitle: "",
    ilustration: '/images/article.png',
  )
];