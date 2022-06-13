import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final Function() onPressed;
  final String text;
  final bool mainButton;
  const DefaultButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = Colors.blue,
    this.textColor = Colors.white,
    this.mainButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: mainButton ? color : null,
        borderRadius: BorderRadius.circular(15.0),
        border: mainButton ? null : Border.all(color: Colors.blue),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: mainButton ? textColor : Colors.blue),
        ),
      ),
    );
  }
}
