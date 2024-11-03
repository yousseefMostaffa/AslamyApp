import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FontdetailHadeth extends StatelessWidget {
  String name ;

  FontdetailHadeth({required this.name });
  @override
  Widget build(BuildContext context) {
    return Text( name,style:Theme.of(context).textTheme.titleLarge,textDirection: TextDirection.rtl,
    textAlign: TextAlign.center,);
  }
}
