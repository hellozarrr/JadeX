import 'package:flutter/material.dart';

class ButtonSecondary extends StatefulWidget {
  final Widget child;
  ButtonSecondary({Key key, @required this.child}) : super(key: key);

  @override
  _ButtonSecondaryState createState() => _ButtonSecondaryState();
}

class _ButtonSecondaryState extends State<ButtonSecondary> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: widget.child,
    );
  }
}