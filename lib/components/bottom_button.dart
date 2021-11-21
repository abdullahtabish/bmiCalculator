import 'package:flutter/material.dart';
import '../constant.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({required this.onTap, required this.bottomButtonText});

  final void Function() onTap;
  final String bottomButtonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            bottomButtonText,
            style: kBottomButtonTextStyle,
          ),
        ),
        height: kBottomContainerHeight,
        width: double.infinity,
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
