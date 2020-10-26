import 'package:flutter/material.dart';

// /this is the indicator when user selects any business.

class SelectedDot extends StatelessWidget {
  // final bool isActive;
  final Color colors;

  SelectedDot({this.colors});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(left: 5.5, top: 6.0),
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.white, style: BorderStyle.solid, width: 2.0),
            shape: BoxShape.circle,
            color: colors,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 8.0),
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colors,
          ),
        ),
      ),
    ]);
  }
}
