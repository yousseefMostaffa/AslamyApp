import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/ColorApp.dart';
import 'package:untitled4/settings/bottomsheet.dart';
import 'package:untitled4/settings/bottomsheet2.dart';

import '../provider/language provider.dart';

class Settingstab extends StatefulWidget {
  @override
  State<Settingstab> createState() => _SettingstabState();
}

class _SettingstabState extends State<Settingstab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Language>(context);

    return
    Container(
      margin: EdgeInsets.all(15),

     child:  Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.language,style: Theme.of(context).textTheme.bodyLarge),
          SizedBox(
            height: 10,
          )
          ,InkWell(
            onTap: (){
              bottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
                    ,color: ColorApp.primaryColor
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
            Text(provider.appLanguage=='en'?
            AppLocalizations.of(context)!.english:
            AppLocalizations.of(context)!.arabic

              ,
            style: Theme.of(context).textTheme.bodyLarge,)
                  ,Icon(
                    Icons.arrow_drop_down_rounded
                  )
                ],
              ),
            ),
          )

          ,
          SizedBox(
            height: 23,
          ),

          Text(AppLocalizations.of(context)!.theme,style: Theme.of(context).textTheme.bodyLarge),


    Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ColorApp.primaryColor,
        borderRadius: BorderRadius.circular(10)
      ),
child:
InkWell(
  onTap: (){
    bottomSheet2();
  },
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,

  children: [
    Text(provider.appMode==ThemeMode.light?
        AppLocalizations.of(context)!.light:
        AppLocalizations.of(context)!.dark
    , style: Theme.of(context).textTheme.bodyLarge,)
    ,Icon(
      Icons.arrow_drop_down_rounded)
      ]
  ),
),
)
        ],
      )
    );


  }

  void bottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context)=>Bottomsheets()
    );
  }
  void bottomSheet2(){
    showModalBottomSheet(context: context,
        builder: (context) => BottomSheet2(),
    );

  }

}


