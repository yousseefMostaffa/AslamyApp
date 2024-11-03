import 'package:flutter/material.dart';
import 'package:untitled4/ColorApp.dart';

class ThemeApp{
   static ThemeData lightMood = ThemeData(

     canvasColor: ColorApp.primaryColor,
     primaryColor: ColorApp.primaryColor,
     scaffoldBackgroundColor: Colors.transparent,
     appBarTheme: AppBarTheme(
       color: Colors.transparent
        ,   elevation:0 ,
         centerTitle: true,
     ),
         textTheme: TextTheme(
       bodySmall: TextStyle(
       color: ColorApp.blackColor
       ,fontSize: 30,
     fontWeight: FontWeight.w700
   ),
           bodyLarge: TextStyle(fontSize: 25,
           fontWeight: FontWeight.w600),
           bodyMedium: TextStyle(
             fontWeight: FontWeight.w400
                 ,fontSize: 25
           ),
           titleLarge: TextStyle(
             fontSize: 20 ,
             fontWeight: FontWeight.w400
           )
   ),
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
       selectedLabelStyle: TextStyle(fontSize: 25),
unselectedIconTheme: IconThemeData(size: 30),

selectedIconTheme: IconThemeData(
  color: ColorApp.blackColor
)
     )
   );
   static ThemeData darkMood = ThemeData(

     bottomSheetTheme: BottomSheetThemeData(
       backgroundColor: Colors.orangeAccent
     ),
canvasColor: ColorApp.primaryyColor,
     primaryColor: ColorApp.primaryyColor,
       scaffoldBackgroundColor: Colors.transparent,
       appBarTheme: AppBarTheme(
         foregroundColor: ColorApp.yellow,
         color: Colors.transparent
         ,   elevation:0 ,
         centerTitle: true,
       ),
       textTheme: TextTheme(
           bodySmall: TextStyle(
               color: ColorApp.white
               ,fontSize: 30,
               fontWeight: FontWeight.w700
           ),
           bodyLarge: TextStyle(fontSize: 25,
               fontWeight: FontWeight.w600,color: ColorApp.white),
           bodyMedium: TextStyle(
               fontWeight: FontWeight.w400
               ,fontSize: 25,
               color: ColorApp.blackColor
           ),
           titleLarge: TextStyle(
             color: ColorApp.yellow,
               fontSize: 20 ,
               fontWeight: FontWeight.w400
           )
       ),
       bottomNavigationBarTheme: BottomNavigationBarThemeData(
         backgroundColor: ColorApp.primaryyColor,

           selectedLabelStyle: TextStyle(fontSize: 25),
           unselectedIconTheme: IconThemeData(size: 30),

           selectedIconTheme: IconThemeData(
               color: ColorApp.yellow
           ),
         unselectedItemColor: ColorApp.white

       )
   );

}
