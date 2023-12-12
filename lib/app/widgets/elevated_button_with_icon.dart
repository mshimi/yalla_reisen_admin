import 'package:flutter/material.dart';

class ElevatedButtonWithIcon extends StatelessWidget {
  const ElevatedButtonWithIcon({
    super.key,
    this.forGroundColor = Colors.white,
    this.backGroundColor = const Color.fromARGB(255, 16, 84, 140),
    required this.iconData,
    required this.titel,
    required this.onPressed,
    this.textColor,
  });
  final void Function()? onPressed;
  final Color forGroundColor;
  final Color backGroundColor;
  final String titel;
  final Color? textColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(forGroundColor),
          backgroundColor: MaterialStatePropertyAll(backGroundColor),
        ),
        onPressed: onPressed,
        icon: Icon(
          iconData,
          color: textColor,
        ),
        label: Text(
          titel,
          style: TextStyle(color: textColor),
        ));
  }
}
