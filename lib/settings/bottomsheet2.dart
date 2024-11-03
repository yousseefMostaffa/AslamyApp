import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../ColorApp.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../provider/language provider.dart';

class BottomSheet2 extends StatefulWidget{
  @override
  State<BottomSheet2> createState() => _BottomSheet2State();
}

class _BottomSheet2State extends State<BottomSheet2> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Language>(context);

    // TODO: implement build
    return Container(

        padding: EdgeInsets.all(15),
    width: double.infinity,

    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      InkWell(
        onTap: (){
          provider.changeMode(ThemeMode.light);
        },
        child: provider.appMode==ThemeMode.light?
            selecteditem(AppLocalizations.of(context)!.light):
            unSelecteditem(AppLocalizations.of(context)!.light)
      )


    ,  SizedBox(
        height: 10,
      ),
    InkWell(
      onTap: (){
        provider.changeMode(ThemeMode.dark);

      },
      child: provider.appMode==ThemeMode.dark?
    selecteditem(AppLocalizations.of(context)!.dark):
    unSelecteditem(AppLocalizations.of(context)!.dark)

      ),

    ],
    )
    );
  }

   Widget selecteditem( String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: Theme
            .of(context)
            .textTheme
            .bodySmall
            ?.copyWith(
            color: ColorApp.primaryColor
        ),),
        Icon(Icons.check, color: Colors.black, size: 30,)
      ],

    );
  }
  Widget unSelecteditem(String text) {
    return Text(text, style: Theme
        .of(context)
        .textTheme
        .bodySmall

    );

  }
}