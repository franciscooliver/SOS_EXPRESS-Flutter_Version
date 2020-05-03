import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sos_express_flutter_version/app_consts.dart';
import 'package:sos_express_flutter_version/pages/introScreen/intro_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Deixando a statusBar transparente
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SOS EXPRESS',
      theme: ThemeData(
        primaryColor: appPrimaryColor
      ),
      home: IntroScreen()
    );
  }
}

