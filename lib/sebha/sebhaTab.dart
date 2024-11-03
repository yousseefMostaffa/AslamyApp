import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/ColorApp.dart';
import 'package:untitled4/provider/language%20provider.dart';


class Sebhatab extends StatefulWidget {
  @override
  State<Sebhatab> createState() => _SebhatabState();
}

class _SebhatabState extends State<Sebhatab> {
  int count = 0;
  int index = 0;
double angle = 0 ;
  List<String>tasbeh = [
    'سبحان الله',
    'الحمدلله',
    'الله اكبر',
    'لا الله الا الله'
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Language>(context);

    return SizedBox
      (width: double.infinity,
      child: Column(

        children: [
          SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.5,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                    top: MediaQuery
                        .of(context)
                        .size
                        .height * 0.05,

                    child:
                    provider.appMode==ThemeMode.dark?
                    Image.asset('assets/images/head of seb7aa.png')
                        :

                    Image.asset('assets/images/head of seb7a.png')),
                GestureDetector(
                    onTap: () {
                      onnTab();
                    },
                    child: Transform.rotate(
                        angle: angle,
                        child:
                    provider.appMode==ThemeMode.dark?
    Image.asset('assets/images/body of seb7aa.png')
:
    Image.asset('assets/images/body of seb7a.png'))),

              ],
            ),
          ),

          Text(AppLocalizations.of(context)!.numberoftasbeh,
            style: Theme
                .of(context)
                .textTheme
                .bodyLarge, textAlign: TextAlign.center,)
          , SizedBox(
            height: 5,
          )
          , Container(
              padding: EdgeInsets.all(17),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:
                  provider.appMode==ThemeMode.dark?
                      ColorApp.primaryyColor
                  :
                  ColorApp.primaryColor
              ),
              child: Text('$count', style: Theme
                  .of(context)
                  .textTheme
                  .bodyLarge, textAlign: TextAlign.center)),
          SizedBox(
            height: 7,
          ),
          Container(
              padding: EdgeInsets.all(17),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:
                  provider.appMode==ThemeMode.dark?
                  ColorApp.yellow
:
                  ColorApp.primaryColor
              ),
              child: Text('${tasbeh[index]}', style: Theme
                  .of(context)
                  .textTheme
                  .bodyMedium,))
        ],
      ),
    );
  }

  onnTab() {
    count++;
if(count%33==0){
  index++ ;
  if(tasbeh.length==index){
    index=0;
    count= 0 ;
  }
  angle +=1 ;
}
    setState(() {

    });
  }

}
//
// if(count==34){
// index+=1 ;
// count = 0 ;
// }
// if(count==34){
// index+=1 ;
// count = 0 ;
// }
// if(count==34){
// index+=1 ;
// count = 0 ;
// }
// if(count==34){
//
// count = 0 ;
// return;
// }