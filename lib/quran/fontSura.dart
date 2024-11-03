import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/quran/suraDetail.dart';

class Fontsura extends StatelessWidget {
  int index ;
  String name ;
  Fontsura({
    required this.name,
    required this.index

});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(Suradetail.routeName,
        arguments: Args(name: name, index: index)
        );
      },

      child: Text(name,style:Theme.of(context).textTheme.bodyMedium,textAlign:TextAlign.center ,
      ),
    );
  }
}
