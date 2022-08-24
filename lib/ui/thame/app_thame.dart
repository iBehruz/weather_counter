/*
* File : App Theme
* Version : 1.0.0
* */

import 'package:case1/ui/thame/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const int themeLight = 1;
  static const int themeDark = 2;

  AppTheme._();


  static FontWeight _getFontWeight(int weight) {
    switch (weight) {
      case 100:
        return FontWeight.w100;
      case 200:
        return FontWeight.w200;
      case 300:
        return FontWeight.w300;
      case 400:
        return FontWeight.w300;
      case 500:
        return FontWeight.w400;
      case 600:
        return FontWeight.w500;
      case 700:
        return FontWeight.w600;
      case 800:
        return FontWeight.w700;
      case 900:
        return FontWeight.w900;
    }
    return FontWeight.w400;
  }


  // ignore: non_constant_identifier_names
  static const TextStyle StickyHeaderStyle =  TextStyle( fontWeight: FontWeight.w600, color: Color(0xff505161));   //App Bar Text
  static const TextStyle StickyHeaderStyle15s = TextStyle(fontSize: 15.5,fontFamily: 'MainFont' , color:  Color(0xff505161), fontWeight: FontWeight.w800, );   //App Bar Text
  static const TextStyle StickyHeaderStyle14s600w = TextStyle(fontSize: 14,fontFamily: 'MainFont' , color:  Color(0xff505161), fontWeight: FontWeight.w600, );   //App Bar Text
  //static const TextStyle StickyHeaderStyle =  TextStyle(color: borderColor);   //App Bar Text
  static const TextTheme lightAppBarTextTheme = TextTheme(
    headline1: TextStyle(fontSize: 102, fontFamily: 'MainFont', color: Colors.white),
    headline2: TextStyle(fontSize: 64, fontFamily: 'MainFont', color: Colors.white),
    headline3: TextStyle(fontSize: 51, fontFamily: 'MainFont', color: Colors.white),
    headline4: TextStyle(fontSize: 36, fontFamily: 'MainFont', color: Colors.white),
    headline5: TextStyle(fontSize: 25, fontFamily: 'MainFont', color: Colors.white),
    headline6: TextStyle(fontSize: 18, fontFamily: 'MainFont', color: Colors.white),
    subtitle1: TextStyle(fontSize: 17, fontFamily: 'MainFont', color: Colors.white),
    subtitle2: TextStyle(fontSize: 15, fontFamily: 'MainFont', color: Colors.white),
    bodyText1: TextStyle(fontSize: 16, fontFamily: 'MainFont', color: Colors.white),
    bodyText2: TextStyle(fontSize: 14, fontFamily: 'MainFont', color: Colors.white),
    button: TextStyle(fontSize: 15, fontFamily: 'MainFont', color: Colors.white),
    caption: TextStyle(fontSize: 13, fontFamily: 'MainFont', color: Colors.white),
    overline: TextStyle(fontSize: 11, fontFamily: 'MainFont', color: Colors.white),
  );

  static const TextTheme darkAppBarTextTheme = TextTheme(
    headline1: TextStyle(fontSize: 102, fontFamily: 'MainFont', color: Color(0xffffffff)),
    headline2: TextStyle(fontSize: 64, fontFamily: 'MainFont', color: Color(0xffffffff)),
    headline3: TextStyle(fontSize: 51, fontFamily: 'MainFont', color: Color(0xffffffff)),
    headline4: TextStyle(fontSize: 36, fontFamily: 'MainFont', color: Color(0xffffffff)),
    headline5: TextStyle(fontSize: 25, fontFamily: 'MainFont', color: Color(0xffffffff)),
    headline6: TextStyle(fontSize: 20, fontFamily: 'MainFont', color: Color(0xffffffff)),
    subtitle1: TextStyle(fontSize: 17, fontFamily: 'MainFont', color: Color(0xffffffff)),
    subtitle2: TextStyle(fontSize: 15, fontFamily: 'MainFont', color: Color(0xffffffff)),
    bodyText1: TextStyle(fontSize: 16, fontFamily: 'MainFont', color: Color(0xffffffff)),
    bodyText2: TextStyle(fontSize: 14, fontFamily: 'MainFont', color: Color(0xffffffff)),
    button: TextStyle(fontSize: 15, fontFamily: 'MainFont', color: Color(0xffffffff)),
    caption: TextStyle(fontSize: 13, fontFamily: 'MainFont', color: Color(0xffffffff)),
    overline: TextStyle(fontSize: 11, fontFamily: 'MainFont', color: Color(0xffffffff)),
  );

  //Text Themes
  static const TextTheme lightTextTheme = TextTheme(
    headline1: TextStyle(fontSize: 102,fontFamily: 'MainFont' , color: Color(0xff4a4c4f)),
    headline2: TextStyle(fontSize: 64,fontFamily: 'MainFont' , color: Color(0xff4a4c4f)),
    headline3: TextStyle(fontSize: 51,fontFamily: 'MainFont' , color: Color(0xff4a4c4f)),
    headline4: TextStyle(fontSize: 36,fontFamily: 'MainFont' , color: Color(0xff4a4c4f)),
    headline5: TextStyle(fontSize: 25,fontFamily: 'MainFont' , color: Color(0xff4a4c4f)),
    headline6: TextStyle(fontSize: 18,fontFamily: 'MainFont' , color: Color(0xff4a4c4f)),
    subtitle1: TextStyle(fontSize: 17,fontFamily: 'MainFont' , color: Color(0xff4a4c4f)),
    subtitle2: TextStyle(fontSize: 15,fontFamily: 'MainFont' , color: Color(0xff4a4c4f)),
    bodyText1: TextStyle(fontSize: 16,fontFamily: 'MainFont' , color: Color(0xff4a4c4f)),
    bodyText2: TextStyle(fontSize: 14,fontFamily: 'MainFont' , color: Color(0xff4a4c4f)),
    button: TextStyle(fontSize: 15,fontFamily: 'MainFont' , color: Color(0xff4a4c4f)),
    caption: TextStyle(fontSize: 13,fontFamily: 'MainFont' , color: Color(0xff4a4c4f)),
    overline: TextStyle(fontSize: 11,fontFamily: 'MainFont' , color: Color(0xff4a4c4f)),
  );
  static const TextTheme darkTextTheme = TextTheme(
    headline1: TextStyle(fontSize: 102,fontFamily: 'MainFont' , color: Colors.white),
    headline2: TextStyle(fontSize: 64,fontFamily: 'MainFont' , color: Colors.white),
    headline3: TextStyle(fontSize: 51,fontFamily: 'MainFont' , color: Colors.white),
    headline4: TextStyle(fontSize: 36,fontFamily: 'MainFont' , color: Colors.white),
    headline5: TextStyle(fontSize: 25,fontFamily: 'MainFont' , color: Colors.white),
    headline6: TextStyle(fontSize: 18,fontFamily: 'MainFont' , color: Colors.white),
    subtitle1: TextStyle(fontSize: 17,fontFamily: 'MainFont' , color: Colors.white),
    subtitle2: TextStyle(fontSize: 15,fontFamily: 'MainFont' , color: Colors.white),
    bodyText1: TextStyle(fontSize: 16,fontFamily: 'MainFont' , color: Colors.white),
    bodyText2: TextStyle(fontSize: 14,fontFamily: 'MainFont' , color: Colors.white),
    button: TextStyle(fontSize: 15,fontFamily: 'MainFont' , color: Colors.white),
    caption: TextStyle(fontSize: 13,fontFamily: 'MainFont' , color: Colors.white),
    overline: TextStyle(fontSize: 11,fontFamily: 'MainFont' , color: Colors.white),
  );

  //Colors Thame
  static ThemeData darkTheme = ThemeData(
      fontFamily: 'MainFont',
      brightness: Brightness.dark,
      canvasColor: Colors.transparent,
      primaryColor: primaryDarkColor,
      scaffoldBackgroundColor: const Color(0xff464c52),
      backgroundColor: const Color(0xff464c52),
      appBarTheme: const AppBarTheme(
        textTheme: darkAppBarTextTheme,
        actionsIconTheme:  IconThemeData(
          color:  Color(0xffffffff),
        ),
        color:  Color(0xff2e343b),
        iconTheme: IconThemeData(color: Color(0xffffffff), size: 24),
      ),
      colorScheme: const ColorScheme.dark(
        primary: primaryDarkColor,
        primaryVariant: primaryDarkColor,
        secondary:  Color(0xff00cc77),
        secondaryVariant: Color(0xff00cc77),
        background: Color(0xff343a40),
        onPrimary: Colors.white,
        onBackground: Colors.white,
        onSecondary: Colors.white,
        surface:  Color(0xff585e63),
      ),
      cardTheme: const CardTheme(
        color:  Color(0xff37404a),
        shadowColor: Color(0xff000000),
        elevation: 1,
        margin: EdgeInsets.all(0),
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      textTheme: darkTextTheme,
      indicatorColor: Colors.white,
      disabledColor: const Color(0xffa3a3a3),
      highlightColor: Colors.white,
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder:  OutlineInputBorder(
          borderRadius:  BorderRadius.all( Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: primaryDarkColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius:  BorderRadius.all( Radius.circular(4)),
          borderSide:  BorderSide(width: 1, color: Colors.white70),
        ),
        border:  OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Colors.white70)),
      ),
      dividerColor: const Color(0xffd1d1d1),
      errorColor: Colors.orange,
      cardColor: const Color(0xff282a2b),
      splashColor: Colors.white.withAlpha(100),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primaryDarkColor,
          splashColor: Colors.white.withAlpha(100),
          highlightElevation: 8,
          elevation: 4,
          focusColor: primaryDarkColor,
          hoverColor: primaryDarkColor,
          foregroundColor: Colors.white),
      accentColor: primaryDarkColor,
      popupMenuTheme: PopupMenuThemeData(
        color: const Color(0xff37404a),
        textStyle:
        lightTextTheme.bodyText2!.merge(const TextStyle(color:  Color(0xffffffff))),
      ),
      bottomAppBarTheme:
      const BottomAppBarTheme(color:  Color(0xff464c52), elevation: 2),
      tabBarTheme: const TabBarTheme(
        unselectedLabelColor:  Color(0xff495057),
        labelColor: primaryDarkColor,
        indicatorSize: TabBarIndicatorSize.label,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: primaryDarkColor, width: 2.0),
        ),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: primaryDarkColor,
        inactiveTrackColor: primaryDarkColor.withAlpha(100),
        trackShape: const RoundedRectSliderTrackShape(),
        trackHeight: 4.0,
        thumbColor: primaryDarkColor,
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10.0),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 24.0),
        tickMarkShape: const RoundSliderTickMarkShape(),
        inactiveTickMarkColor: Colors.red[100],
        valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
        valueIndicatorTextStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
      cupertinoOverrideTheme: const CupertinoThemeData());

  static final ThemeData lightTheme = ThemeData(
    fontFamily: 'MainFont',
    brightness: Brightness.light,
    primaryColor: primaryColor,
    canvasColor: Colors.transparent,
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: const Color(0xffffffff),
    /*appBarTheme: AppBarTheme(
      textTheme: lightAppBarTextTheme,
      actionsIconTheme: IconThemeData(
        color: Color(0xff495057),
      ),
      color: Color(0xffffffff),
      iconTheme: IconThemeData(color: Color(0xff495057), size: 24),
    ),*/
    appBarTheme: const AppBarTheme(
      textTheme: lightAppBarTextTheme,
      actionsIconTheme: IconThemeData(
        color: Colors.white,
      ),
      color: primaryColor,
      iconTheme: IconThemeData(color: Colors.white, size: 24),
    ),
    navigationRailTheme: const NavigationRailThemeData(
        selectedIconTheme:
        IconThemeData(color: primaryColor, opacity: 1, size: 24),
        unselectedIconTheme:
        IconThemeData(color: Color(0xff495057), opacity: 1, size: 24),
        backgroundColor: Color(0xffffffff),
        elevation: 3,
        selectedLabelTextStyle: TextStyle(color: primaryColor),
        unselectedLabelTextStyle: TextStyle(color: Color(0xff495057))),
    colorScheme: const ColorScheme.light(
        primary: primaryColor,
        onPrimary: Colors.white,
        primaryVariant:  Color(0xff0055ff),
        secondary:  Color(0xff495057),
        secondaryVariant: Color(0xff3cd278),
        onSecondary: Colors.white,
        surface:  Color(0xffe2e7f1),
        background:  Color(0xfff3f4f7),
        onBackground:  Color(0xff495057)),
    cardTheme: CardTheme(
      color: Colors.white,
      shadowColor: Colors.black.withOpacity(0.4),
      elevation: 1,
      margin: const EdgeInsets.all(0),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle:  TextStyle(fontSize: 15, color:  Color(0xaa495057)),
      focusedBorder:  OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: primaryColor),
      ),
      enabledBorder:  OutlineInputBorder(
        borderRadius:  BorderRadius.all( Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: Colors.black54),
      ),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide:  BorderSide(width: 1, color: Colors.black54)),
    ),
    splashColor: Colors.white.withAlpha(100),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    textTheme: lightTextTheme,
    indicatorColor: Colors.white,
    disabledColor: primaryColor,
    highlightColor: Colors.white,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        splashColor: Colors.white.withAlpha(100),
        highlightElevation: 8,
        elevation: 4,
        focusColor: primaryColor,
        hoverColor: primaryColor,
        foregroundColor: Colors.white),
    dividerColor: const Color(0xffd1d1d1),
    errorColor: const Color(0xfff0323c),
    cardColor: Colors.white,
    accentColor: primaryColor,
    popupMenuTheme: PopupMenuThemeData(
      color: const Color(0xffffffff),
      textStyle:
      lightTextTheme.bodyText2!.merge(const TextStyle(color:  Color(0xff495057))),
    ),
    bottomAppBarTheme:
    const BottomAppBarTheme(color:  Color(0xffffffff), elevation: 2),
    tabBarTheme: const TabBarTheme(
      unselectedLabelColor: Color(0xff495057),
      labelColor: primaryColor,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: primaryColor, width: 2.0),
      ),
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: primaryColor,
      inactiveTrackColor: primaryColor.withAlpha(140),
      trackShape: const RoundedRectSliderTrackShape(),
      trackHeight: 4.0,
      thumbColor: primaryColor,
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10.0),
      overlayShape: const RoundSliderOverlayShape(overlayRadius: 24.0),
      tickMarkShape: const RoundSliderTickMarkShape(),
      inactiveTickMarkColor: Colors.red[100],
      valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
      valueIndicatorTextStyle: const TextStyle(
        color: Colors.white,
      ),
    ),
  );


  static ThemeData getThemeFromThemeMode(int themeMode) {
    if (themeMode == themeLight) {
      return lightTheme;
    } else if (themeMode == themeDark) {
      return darkTheme;
    }
    return lightTheme;
  }

  static NavigationBarTheme getNavigationThemeFromMode(int themeMode) {
    NavigationBarTheme navigationBarTheme = NavigationBarTheme();
    if (themeMode == themeLight) {
      navigationBarTheme.backgroundColor = Colors.white;
      navigationBarTheme.selectedItemColor = primaryColor;
      navigationBarTheme.unselectedItemColor = const Color(0xff495057);
      navigationBarTheme.selectedOverlayColor = const Color(0x383d63ff);
    } else if (themeMode == themeDark) {
      navigationBarTheme.backgroundColor = const Color(0xff37404a);
      navigationBarTheme.selectedItemColor = const Color(0xff37404a);
      navigationBarTheme.unselectedItemColor = const Color(0xffd1d1d1);
      navigationBarTheme.selectedOverlayColor = const Color(0xffffffff);
    }
    return navigationBarTheme;
  }




}

class NavigationBarTheme {
  Color? backgroundColor,
      selectedItemIconColor,
      selectedItemTextColor,
      selectedItemColor,
      selectedOverlayColor,
      unselectedItemIconColor,
      unselectedItemTextColor,
      unselectedItemColor;
}
