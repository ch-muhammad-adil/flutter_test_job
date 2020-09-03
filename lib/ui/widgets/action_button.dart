import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_job/constants/ui_constants.dart';

class ActionButton extends StatelessWidget {
  ActionButton(
      this.title,
      {double this.height=45,
        double this.width=120,
        Color this.backgroundColor=colorPrimary,
        double this.elevation=0,
        Color this.textColor=Colors.white,
        this.onPressed,
        TextStyle this.textStyle =
        const TextStyle(fontSize: 12, fontWeight: FontWeight.w300)});

  final String title;
  final VoidCallback onPressed;
  final TextStyle textStyle;
  final Color textColor;
  final Color backgroundColor;
  final double elevation;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        minWidth: ScreenUtil().setWidth(width*2),
        height: ScreenUtil().setHeight(height*2),
        shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),borderRadius: BorderRadius.all(Radius.circular(5))),
        child: RaisedButton(
            elevation: elevation,
            child: Text(
              title,
              style: textStyle,
            ),
            textColor: textColor,
            color: backgroundColor,
            onPressed: onPressed));
  }
}
