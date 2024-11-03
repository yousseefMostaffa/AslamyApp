import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/hadeth/hadethDetail.dart';
import 'package:untitled4/home.dart';
import 'package:untitled4/provider/language%20provider.dart';
import 'package:untitled4/quran/suraDetail.dart';
import 'package:untitled4/themeApp.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main(){
  runApp(ChangeNotifierProvider(
      create: (context) => Language() ,
      child: MyApp()));
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Language>(context);
    return MaterialApp(
      initialRoute: Home.routeName,
      routes: {
        Home.routeName:(context)=> Home(),
        Suradetail.routeName:(context)=> Suradetail(),
Hadethdetail.routeName:(context)=> Hadethdetail()

        },
        theme: ThemeApp.lightMood,
darkTheme: ThemeApp.darkMood,
      themeMode: provider.appMode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),

    )
    ;
  }
}
