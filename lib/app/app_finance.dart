import 'package:finance_ranking/app/modules/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppFinance extends StatelessWidget {

  const AppFinance({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return const MaterialApp(
        title: 'Finance Rancking',
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
       );
  }
}
