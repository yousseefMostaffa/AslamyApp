import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/hadeth/hadethDetail.dart';
import 'package:untitled4/hadeth/hadethTab.dart';
import 'package:untitled4/quran/suraDetail.dart';

class FontHadethTitel extends StatelessWidget {

  DataClass hadeth ;
  FontHadethTitel({
    required this.hadeth,


});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      Navigator.of(context).pushNamed(Hadethdetail.routeName
      ,arguments: hadeth);
      },

      child: Text(hadeth.titel,style:Theme.of(context).textTheme.bodyMedium,textAlign:TextAlign.center ,
      ),
    );
  }
}
