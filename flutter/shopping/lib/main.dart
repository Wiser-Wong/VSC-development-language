import 'package:flutter/material.dart';

import './config/import_home.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.homeTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(Constants.homeTitle),
          backgroundColor: FColors.primaryColor,
          centerTitle: true,
        ),
      ),
    );
  }

}