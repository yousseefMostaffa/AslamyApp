import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/ColorApp.dart';
import 'package:untitled4/provider/language%20provider.dart';
import 'package:untitled4/quran/fontSura.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Qurantab extends StatelessWidget {
  List<String>SuraNames=[
    "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Language> (context);
    return Column(
      children: [
        Image.asset('assets/images/quranp.png'),
           Divider(
      color: provider.appMode==ThemeMode.dark?
      ColorApp.yellow
          :

      ColorApp.primaryColor,
      thickness: 4,

    ),

        Text(AppLocalizations.of(context)!.sura_name,style: Theme.of(context).textTheme.bodyLarge),
    Divider(
    color: provider.appMode==ThemeMode.dark?
    ColorApp.yellow
        :

    ColorApp.primaryColor,
    thickness: 4,

    ),

    Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Fontsura(name: SuraNames[index], index: index);
              },
              separatorBuilder: (context, index) {
                return         Divider(
                color: provider.appMode==ThemeMode.dark?
                    ColorApp.yellow
                :

                ColorApp.primaryColor,
                thickness: 4,
          
                );
          
              },
              itemCount: SuraNames.length),
        )

    ],
    );
    
    


  }
}
