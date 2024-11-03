import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Language extends ChangeNotifier{
  String appLanguage ='en';
  ThemeMode appMode = ThemeMode.light ;
  void changeLanguage (newLanguage){
    if(appLanguage==newLanguage){
      return;
    }
    appLanguage=newLanguage ;
    notifyListeners();
  }
  void changeMode(newMode){
    if(appMode==newMode){
      return;
    }
    appMode=newMode;
    notifyListeners();
  }


}