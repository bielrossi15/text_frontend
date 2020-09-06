import 'package:flutter/material.dart';

class ReturnButton extends StatelessWidget {
  ReturnButton({@required this.pressed, @required this.color});

  final Function pressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: pressed,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      highlightColor: Colors.white,
      splashColor: Colors.transparent,
      constraints: BoxConstraints(maxWidth: 40.0, maxHeight: 40.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14.0),
            boxShadow: [
              BoxShadow(
                  color: this.color, offset: Offset(0, 4), blurRadius: 4.0)
            ]
            ),
        child: Icon(Icons.arrow_back),
        alignment: Alignment.center,
      ),
    );
  }
}