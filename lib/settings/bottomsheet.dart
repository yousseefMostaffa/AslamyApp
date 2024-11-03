import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/ColorApp.dart';
import 'package:untitled4/provider/language%20provider.dart';


class Bottomsheets extends StatefulWidget {
  @override
  State<Bottomsheets> createState() => _BottomsheetsState();
}

class _BottomsheetsState extends State<Bottomsheets> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Language>(context);
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage('en');
            },
            child:
              provider.appLanguage=='en'?
                  selected(AppLocalizations.of(context)!.english):
                  unSelected(AppLocalizations.of(context)!.english)
              
                  
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage('ar');
            },
            child: provider.appLanguage=='ar'?
            selected(AppLocalizations.of(context)!.arabic):
            unSelected(AppLocalizations.of(context)!.arabic)
          )

        ],
      ),
    );
  }

  Widget selected(String text) {
return  Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(text, style: Theme
        .of(context)
        .textTheme
        .bodySmall
        ?.copyWith(
        color: ColorApp.primaryColor
    ),),
    Icon(Icons.check, color: ColorApp.primaryColor, size: 30,)
  ],
);
  }

  Widget unSelected(String text) {
return Text(text, style: Theme
    .of(context)
    .textTheme
    .bodySmall

);
  }
}