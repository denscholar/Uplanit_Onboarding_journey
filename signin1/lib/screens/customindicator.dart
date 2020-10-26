import 'package:flutter/material.dart';

class BorderedDot extends StatelessWidget {
  final Color color;
  const BorderedDot({
    Key key,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: color,
        ),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: SimpleDot(isActive: true),
      ),
    );
  }
}

class SimpleDot extends StatelessWidget {
  final bool isActive;
  final Color color;
  const SimpleDot({
    Key key,
    this.isActive = false,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white38,
        shape: BoxShape.circle,
        
      ),
    );
  }
}

class SimpleLine extends StatelessWidget {
  final Color color;
  const SimpleLine({
    Key key,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 1,
      decoration: BoxDecoration(
        color: color,
      ),
    );
  }
}