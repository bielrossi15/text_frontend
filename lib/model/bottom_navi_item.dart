import 'package:flutter/material.dart';

class BottomNaviItem extends StatelessWidget {
  BottomNaviItem({
    @required this.title, 
    this.icon,
    this.press,
    this.isActive = false,
    });

  final String title;
  final String icon;
  final Function press;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home, color: isActive ? Color(0xFF000000) : Color(0xFF999999),),
          Text(this.title,  style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    .copyWith(fontSize: 12, color: isActive ? Color(0xFF000000) : Color(0xFF999999)),
              ),
        ],
      ),
    );
  }
}
