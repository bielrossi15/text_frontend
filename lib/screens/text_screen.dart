import 'package:flutter/material.dart';
import 'package:mup/objects/object_simple_json.dart';
import 'package:mup/objects/text_object.dart';
import 'package:mup/components/return_button.dart';

class TextScreen extends StatelessWidget {
  TextScreen({@required this.subject, @required this.id});

  final String subject;
  final int id;

  Future<MUPText> texts;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.08,
                        vertical: MediaQuery.of(context).size.height * 0.05,
                      ),
                      child: Row(
                        children: [
                          ReturnButton(
                              color: Colors.blueGrey,
                              pressed: () {
                                Navigator.pop(context);
                              }),
                        ],
                      ),
                    ),
                  ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.03,
              vertical: MediaQuery.of(context).size.height * 0.02,
            ),
            child: FutureBuilder(
              future: fetchMUPText(this.subject, this.id),
              builder: (context, AsyncSnapshot<MUPText> snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      Text(
                        snapshot.data.title,
                        style: Theme.of(context).textTheme.title.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        snapshot.data.subtitle,
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey,
                            ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        snapshot.data.autor,
                        style: Theme.of(context).textTheme.subtitle2.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                      ),
                      SizedBox(height: 30.0),
                      Text(
                        snapshot.data.text,
                        style: Theme.of(context).textTheme.display1.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                      )
                    ],
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
