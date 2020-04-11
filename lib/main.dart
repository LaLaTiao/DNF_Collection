import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main_page.dart';
import 'provider/ProviderStore.dart';

void main() {
  runApp(MyApp());

  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderStore.init(
        context: context,
        child: Container(
          child: MaterialApp(
            title: 'DNF Equipment Collection',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(primaryColor: Colors.lightBlue),
            home: MainPage(),
          ),
        ));
  }
}
