import 'package:flutter/material.dart';

class Elevatedbutton extends StatelessWidget {
  final void Function() onPressed;
  final Widget child;
  final Color? bgcolor;
  final double? elevation;
  final EdgeInsets? padding;
  final Size? fixedsize;

  const Elevatedbutton(
      {Key? key,
      required this.onPressed,
      required this.child,
      this.bgcolor,
      this.elevation,
      this.padding,
      this.fixedsize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(bgcolor),
          elevation: MaterialStateProperty.all(elevation),
          padding: MaterialStateProperty.all(padding),
          fixedSize: MaterialStateProperty.all(fixedsize)),
      child: child,
    );
  }
}
