import 'package:flutter/material.dart';
import 'package:mup/objects/objects_json.dart';
import 'package:mup/model/subject_card.dart';
import '../model/subject_card.dart';
import 'package:mup/components/return_button.dart';
import 'package:mup/screens/text_screen.dart';

class GeneralSubjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .45,
                decoration: BoxDecoration(
                  color: Color(0xffcc34c7),
                  image: DecorationImage(
                    image: AssetImage("asset/images/back.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                              color: Color(0xffcc34c7),
                              pressed: () {
                                Navigator.pop(context);
                              }),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .05,
                        ),
                        Text(
                          "Textos Gerais",
                          style: Theme.of(context).textTheme.display1.copyWith(
                              fontWeight: FontWeight.w900, color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Todos os textos postados pelo MUP",
                          style: Theme.of(context).textTheme.display1.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: FutureBuilder(
              future: fetchMUPText("general"),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                    // shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int i) {
                      print(i);
                      return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                          child: SubjectTextsCard(
                            title: snapshot.data[i].title,
                            autor: snapshot.data[i].autor,
                            color: Color(0xffcc34c7),
                            press: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return TextScreen(subject: "general", id: snapshot.data[i].id,);
                              }));
                            },
                          ));
                    },
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
