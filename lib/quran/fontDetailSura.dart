import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fontdetailsura extends StatelessWidget {
  String name ;
   int index ;
Fontdetailsura({required this.name , required this.index});
  @override
  Widget build(BuildContext context) {
    return Text( '$name (${index+1})',style:Theme.of(context).textTheme.titleLarge,textDirection: TextDirection.rtl,
    textAlign: TextAlign.center,);
  }
}
