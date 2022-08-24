import 'package:bloc/bloc.dart';
import 'package:case1/ui/thame/app_thame.dart';
import 'package:case1/ui/utils.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ThemerCubit extends Cubit<ThemeData> {

  ThemerCubit() : super(AppTheme.getThemeFromThemeMode(themeType));

  /// Dark to the current state.
  void dark() {
    themeType = AppTheme.themeDark;
    emit(AppTheme.getThemeFromThemeMode(themeType));}

  /// Light to the current state.
  void light() {
    themeType = AppTheme.themeLight;
    emit(AppTheme.getThemeFromThemeMode(themeType));}

}
