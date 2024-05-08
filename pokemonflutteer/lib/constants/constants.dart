import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();
  static String title = "Pokedex";
  static TextStyle getTitleTextStyle() {
    return TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 48);
  }

  static TextStyle getPokemonNameTextStyle() {
    return TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24);
  }

  static TextStyle getTypeChipTextStyle() {
    return TextStyle(color: Colors.white, fontSize: 20);
  }

  /* static _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      int a = size.sp.toInt();
      debugPrint(a.toString());
      return (size*3).sp;
    } else {
      return (size * 4.5).sp;
    }
  }*/
}
