import 'package:flutter/material.dart';
import 'package:mup/model/bottom_navi_item.dart';

class BottomNaviBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      height: 55,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNaviItem(title: "Home",),
          BottomNaviItem(title: "Settings"),
        ],
      ),
    );
  }
}
