import 'package:flutter/material.dart';

class ReuseCard extends StatelessWidget {

  ReuseCard({required this.colour, required this.childCard, required this.onPress});

  final Color colour;
  final Widget childCard;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
