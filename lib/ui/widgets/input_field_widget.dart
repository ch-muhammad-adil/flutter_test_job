import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:test_job/constants/ui_constants.dart';

class TextInputFieldWidget extends StatelessWidget {
  final String value;
  final String textFieldHint;
  final TextInputType textInputType;
  final TextEditingController controller;
  final double titleAndFieldSpace;
  final TextStyle titleStyle;
  final TextStyle textFieldStyle;
  final TextStyle textFieldHintStyle;
  final EdgeInsets padding;
  final Color fillColor;
  final bool enabled;
  final Widget sufix;
  final Widget sufixIcon;
  final VoidCallback onTap;
  final int maxLength;
  final int maxLines;
  final FocusNode focusNode;
  final Function onChange;
  final bool obscureText;
  final bool autoCorrect;
  final TextAlign textAlign;
  final Function onSubmitted;
  final TextInputAction textInputAction;
  final TextCapitalization textCapitalization;
  bool readOnly = false;
  bool autofocus = false;

  TextInputFieldWidget(
      {this.textFieldHintStyle,
        this.textFieldStyle,
        this.titleStyle,
        this.controller,
        this.textFieldHint,
        this.textInputType,
        this.titleAndFieldSpace,
        this.value,
        this.focusNode,
        this.padding,
        this.fillColor,
        this.readOnly,
        bool this.enabled = true,
        this.sufix,
        this.sufixIcon,
        this.onTap,
        this.maxLength,
        this.maxLines,
        this.onChange,
        this.obscureText = false,
        this.autoCorrect = true,
        this.textAlign,
        this.onSubmitted,
        this.textInputAction,
        this.textCapitalization,
        this.autofocus
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(100),
      padding: padding == null
          ? EdgeInsets.only(left: 12, right: 12, top: 2, bottom: 2)
          : padding,
      decoration: BoxDecoration(border: Border.all(color: colorTextLight, width: 0.5, ), borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Center(
        child: TextField(
          controller: controller,
          focusNode: focusNode,
          enabled: enabled,
          onChanged: onChange,
          obscureText: obscureText,
          autocorrect: autoCorrect,
          keyboardType:
          textInputType == null ? TextInputType.text : textInputType,
          textCapitalization: textCapitalization == null ? TextCapitalization.sentences : textCapitalization,
          decoration: InputDecoration.collapsed(
            hintText: textFieldHint,
            hintStyle: textFieldHintStyle,
            hasFloatingPlaceholder: false,
          ),
          style: textFieldStyle,
          onSubmitted: onSubmitted,
          textInputAction: textInputAction == null ? TextInputAction.done : textInputAction,
          maxLines: maxLines == null ? 1 : maxLines,
          autofocus: autofocus,
        ),
      ),
    );
  }
}
