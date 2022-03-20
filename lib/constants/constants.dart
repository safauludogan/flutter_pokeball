import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._(); //Bu yapı ile bu sınıftan nesne üretilmesini engelliyoruz. Kurucu metot'u gizli yaptık

  static const String title = 'Pokedex';

  static TextStyle getTitleTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(48),
    );
  }

  static TextStyle getPokemonNameTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(24),
    );
  }

  static TextStyle getTypeChipTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(20),
    );
  }

  //Uygulama içerisindeki font boyutlarını telefonun default fontsize'ına göre ayarla
  //.sp ile cihazın font boyutunu ayarla
  static _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 1.5).sp;
    }
  }

  static getPokeInfoLabelTextStyle() {
    return TextStyle(fontSize: _calculateFontSize(20),fontWeight: FontWeight.bold,color: Colors.black);
  }

  static getPokeInfoTextStyle() {
    return TextStyle(fontSize: _calculateFontSize(16),color: Colors.black);
  }
}
