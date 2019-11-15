import 'package:flutter/material.dart';
import 'package:jadex/color/color_palette.dart';

class InputPrimary extends StatefulWidget {
  // final Function validator;
  final String txtLabel;
  final String hintText;
  final double tfWidth,tfHeight;
  final Color labelColor, borderColor;
  final TextEditingController myController;
  final FocusNode node;
  
  InputPrimary(
      {Key key,
      this.txtLabel,
      this.labelColor,
      this.borderColor,
      this.hintText,
      this.myController,
      this.tfWidth,
      this.tfHeight,
      this.node})
      : super(key: key);

  @override
  _InputPrimaryState createState() => _InputPrimaryState();
}

class _InputPrimaryState extends State<InputPrimary> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.tfWidth ?? 320,
      height: widget.tfHeight?? 56,
      child: TextField(focusNode: widget.node,
        controller: widget.myController,
        decoration: InputDecoration(hintText: widget.hintText,
            fillColor: widget.borderColor ?? Palette.warm_pink, border: OutlineInputBorder()),
      ),
    );
  }
}
