import 'package:finance_ranking/app/core/database/sqlite_adm_connection.dart';
import 'package:finance_ranking/app/modules/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppFinance extends StatefulWidget {
  const AppFinance({Key? key}) : super(key: key);

  @override
  State<AppFinance> createState() => _AppFinanceState();
}

class _AppFinanceState extends State<AppFinance> {
  final sqliteAdmConnection = SqliteAdmConnection();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(sqliteAdmConnection);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(sqliteAdmConnection);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Finance Rancking',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
