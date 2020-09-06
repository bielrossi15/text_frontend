import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:mup/model/card.dart';
import 'package:mup/components/card_component.dart';
import 'package:mup/components/bottom_navi_bar.dart';
import 'about_subject.dart';
import 'boletim_subject.dart';
import 'general_subject.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // bottomNavigationBar: BottomNaviBar(),
      body: Stack(
        children: <Widget>[
          // ClipPath(
          //   clipper: MyClipper(),
          //   child:
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.center,
                  fit: BoxFit.fill,
                  image: AssetImage("asset/images/mup7.jpg")),
            ),
          ),
          // ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 240, left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: .85,
                      children: [
                        CardWidget(
                          subjects: newMUPTextSubjects[0],
                          press: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return AboutSubjectScreen();
                            }));
                          },
                        ),
                        CardWidget(
                          subjects: newMUPTextSubjects[1],
                          press: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return BoletimSubjectScreen();
                            }));
                          },
                        ),
                        CardWidget(
                          subjects: newMUPTextSubjects[2],
                          press: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return GeneralSubjectScreen();
                            }));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldCLipper) {
    return false;
  }
}
