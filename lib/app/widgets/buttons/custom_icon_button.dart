import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key,
      required this.onPressed,
      required this.iconData,
      this.iconSize = 24,
      this.isActive = true,
      this.color});

  final Function()? onPressed;
  final IconData iconData;
  final double iconSize;
  final bool isActive;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: isActive ? onPressed : null,
        icon: Icon(
          iconData,
          size: iconSize,
          color: color,
        ));
  }
}
