import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/ColorApp.dart';
import 'package:untitled4/hadeth/hadethTab.dart';
import 'package:untitled4/provider/language%20provider.dart';
import 'package:untitled4/quran/quranTab.dart';
import 'package:untitled4/radiotab.dart';
import 'package:untitled4/sebha/sebhaTab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled4/settings/settingstab.dart';
class Home extends StatefulWidget {
static String routeName = ' home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Language>(context);

    return Stack(
      children: [
        provider.appMode==ThemeMode.dark?
    Image.asset('assets/images/home_dark_background.png',
      fit: BoxFit.fill,
      width: double.infinity,
      height: double.infinity,
    )

            :

        Image.asset('assets/images/bg3.png',
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
    Scaffold(
      body: tabs[selectIndex],
    backgroundColor: Colors.transparent,
    appBar: AppBar(
    title: Text(AppLocalizations.of(context)!.app_titel,style: Theme.of(context).textTheme.bodySmall),
    ),
         bottomNavigationBar:BottomNavigationBar(
         currentIndex: selectIndex,
         onTap: (index){
           selectIndex=index ;
           setState(() {

           });
         },
          items: [
            BottomNavigationBarItem(


                icon:ImageIcon(AssetImage('assets/images/quran.png')) ,
                label: AppLocalizations.of(context)!.quran

            )
            , BottomNavigationBarItem(


                icon:ImageIcon(AssetImage('assets/images/hadeth.png')) ,
                label:AppLocalizations.of(context)!.hadeth

            ),
            BottomNavigationBarItem(


                icon:ImageIcon(AssetImage('assets/images/sebha.png')) ,
                label:AppLocalizations.of(context)!.sebha

            ),
            BottomNavigationBarItem(
                icon:ImageIcon(AssetImage('assets/images/radio.png')) ,
                label:AppLocalizations.of(context)!.radio

            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.settings) ,
                label:AppLocalizations.of(context)!.settings

            )


          ],
                 )

    ),


      ],
    );



  }

  List<Widget>tabs=[Qurantab(),Hadethtab(),Sebhatab(),Radiotab(),Settingstab()];
}
