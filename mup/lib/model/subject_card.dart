import 'package:flutter/material.dart';
import 'package:mup/constants.dart';
import 'package:mup/objects/text_object.dart';

class SubjectTextsCard extends StatelessWidget {
  SubjectTextsCard({@required this.title, @required this.autor, @required this.press, @required this.color});

  final String title;
  final String autor;
  final Color color;
  final Function press;

  @override
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      this.title,
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .copyWith(fontSize: 15, color: this.color),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      this.autor,
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .copyWith(fontSize: 10, color: this.color),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
