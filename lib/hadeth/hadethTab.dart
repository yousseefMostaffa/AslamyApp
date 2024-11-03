import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/hadeth/font-hadeth-titel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled4/provider/language%20provider.dart';

import '../ColorApp.dart';

class Hadethtab extends StatefulWidget {
  @override
  State<Hadethtab> createState() => _HadethtabState();
}

class _HadethtabState extends State<Hadethtab> {
  List<DataClass>ahadeth =[];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Language>(context);
    if(ahadeth.isEmpty){
loadFileH();}
    return Column(
        children: [
        Image.asset('assets/images/hadith_header.png')
    ,Divider(

    color:
            provider.appMode==ThemeMode.dark?
            ColorApp.yellow
            :

    ColorApp.primaryColor,
    thickness: 6,

    ),
    Text( AppLocalizations.of(context)!.hadeth_Name,style: Theme.of(context).textTheme.bodyLarge),
    Divider(

    color:
     provider.appMode==ThemeMode.dark?
    ColorApp.yellow
      :
    ColorApp.primaryColor,
    thickness: 6,

    ),

   Expanded(
    flex: 2,
    child: ListView.separated(
        itemBuilder: (context, index) {
          return FontHadethTitel(hadeth: ahadeth[index]);
        },

        separatorBuilder: (context, index) {
          return     Divider(


            color: provider.appMode==ThemeMode.dark?
          ColorApp.yellow
            :ColorApp.primaryColor,
            thickness: 4,

          );

        },
        itemCount: ahadeth.length),
  ),

    ]
    );


  }

  void loadFileH ()async{
    String hadethcontant = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String>hadethList= hadethcontant.split('#\r\n');
    for(int i = 0 ; i<hadethList.length ; i++){
      List<String>hadethLines= hadethList[i].split('\n');
      String titel = hadethLines[0];
      hadethLines.removeAt(0);
      DataClass haadeth = DataClass(titel: titel, contantHadeth: hadethLines);
      ahadeth.add(haadeth);
setState(() {

});

    }
  }
}
///data class
class DataClass {
  String titel ;
  List<String>contantHadeth ;
  DataClass({required this.titel , required this.contantHadeth});
}