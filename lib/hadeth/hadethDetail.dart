import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/hadeth/hadethTab.dart';
import 'package:untitled4/quran/fontDetailSura.dart';
import 'package:untitled4/hadeth/fontDetailhadeth.dart';

import '../ColorApp.dart';
import '../provider/language provider.dart';

class Hadethdetail extends StatefulWidget {
static const String routeName ='hadethDetail';

  @override
  State<Hadethdetail> createState() => _HadethdetailState();
}

class _HadethdetailState extends State<Hadethdetail> {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Language>(context);

    var args = ModalRoute.of(context)!.settings.arguments as DataClass ;


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
    appBar: AppBar(
    title: Text(args.titel,style: Theme.of(context).textTheme.bodySmall),
    ),
      body: Expanded(

        child:


        Container(
          margin:EdgeInsets.all(10) ,
          decoration: BoxDecoration(
            color:
            provider.appMode==ThemeMode.dark?
            ColorApp.primaryyColor
                :

            Colors.white,
            borderRadius: BorderRadius.circular(24)
          ),
          child: ListView.separated(itemBuilder:
          (context, index) {
            return FontdetailHadeth(name: args.contantHadeth[index]);
          },
              separatorBuilder: 
              (context, index) {
                return  Divider(

                  color:
                  provider.appMode==ThemeMode.dark?
                ColorApp.yellow
                  :
                  ColorApp.primaryColor,
                  thickness: 2,
          
                );
          
              }
              , itemCount: args.contantHadeth.length
          ),
        ),
      ),


    ),
      ]
    );
  }



}