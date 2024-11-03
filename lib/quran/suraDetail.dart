import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/quran/fontDetailSura.dart';

import '../ColorApp.dart';
import '../provider/language provider.dart';

class Suradetail extends StatefulWidget {
static const String routeName ='suraDetail';

  @override
  State<Suradetail> createState() => _SuradetailState();
}

class _SuradetailState extends State<Suradetail> {

List<String>verse =[];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Language>(context);


    var args = ModalRoute.of(context)!.settings.arguments as Args ;
    if(verse.isEmpty) {
      loadFiles(args.index);
    }
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
    title: Text(args.name,style: Theme.of(context).textTheme.bodySmall),
    ),
      body: Expanded(

        child:
            verse.isEmpty?
                CircularProgressIndicator(
                  color: ColorApp.primaryColor,
                )
                :
        Container(
          margin: EdgeInsets.all(20),

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
            return Fontdetailsura(name: verse[index], index: index);
          },
              separatorBuilder: 
              (context, index) {
                return  Divider(
                  color:provider.appMode==ThemeMode.dark?
                  ColorApp.yellow
                  :

                  ColorApp.primaryColor,
                  thickness: 2,
          
                );
          
              }
              , itemCount: verse.length
          ),
        ),
      ),


    ),
      ]
    );
  }

  void loadFiles (int index)async{
    String contant = await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String>lines = contant.split('\n');
verse = lines ;
setState(() {

});

  }
}
///data class
class Args {
  String name ;
  int index ;
  Args({
    required this.name , required this.index
});
}