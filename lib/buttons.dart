import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final buttononTapped;

  const MyButton({
    Key? key,
  required this.color,
  required this.textColor,
  required this.buttonText,
    required this.buttononTapped,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttononTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(child: Text(buttonText,style: TextStyle(color: textColor, fontSize: 15),),),
          ),
        )
      ),
    );
  }
}
