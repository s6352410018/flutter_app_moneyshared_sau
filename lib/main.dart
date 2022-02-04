import 'package:flutter/material.dart';
import 'package:flutter_app_moneyshared_sau/views/moneyshare_ui.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MoneyShareUI(),
      theme: ThemeData(
        fontFamily: 'Kanit',
      ),
    ),
  );
}
