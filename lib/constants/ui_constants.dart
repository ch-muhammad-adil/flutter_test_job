
import 'dart:ui';

import 'package:flutter_screenutil/screenutil.dart';

const Color colorDark = const Color(0xFF3B414C);
Color colorDarkTransparent =  colorDark.withOpacity(0.26);
const Color colorTextDark = colorDark;
Color colorTextLight = colorDark.withOpacity(0.85);
const Color colorPrimary = const Color(0xFF2196F3);

//as we are using ScreenUtil plugin so every size has to be double

class TextSize {
  static get size6px => (6 * 2).toDouble();

  static get size7px => (7 * 2).toDouble();

  static get size8px => (8 * 2).toDouble();

  static get size9px => (9 * 2).toDouble();

  static get size10px => (10 * 2).toDouble();

  static get size11px => (11 * 2).toDouble();

  static get size12px => (12 * 2).toDouble();

  static get size13px => (13 * 2).toDouble();

  static get size14px => (14 * 2).toDouble();

  static get size15px => (15 * 2).toDouble();

  static get size16px => (16 * 2).toDouble();

  static get size17px => (17 * 2).toDouble();

  static get size18px => (18 * 2).toDouble();

  static get size19px => (19 * 2).toDouble();

  static get size20px => (20 * 2).toDouble();

  static get size21px => (21 * 2).toDouble();

  static get size22px => (22 * 2).toDouble();

  static get size23px => (23 * 2).toDouble();

  static get size24px => (24 * 2).toDouble();

  static get size25px => (25 * 2).toDouble();

  static get size26px => (26 * 2).toDouble();
}

class TextStyleWithFontSize {
  static TextStyle setTextStyle(double fontSize, {Color color}) {
    return TextStyle(
        color: color != null ? color : colorTextDark,
        fontSize: ScreenUtil().setSp(fontSize));
  }

  static get textStyle12px =>
      TextStyle(fontSize: ScreenUtil().setSp(TextSize.size12px));
}