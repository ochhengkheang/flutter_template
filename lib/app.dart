import 'package:flutter/material.dart';
import 'package:flutter_template/utils/themes/themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        title: 'Flutter_Template',
        darkTheme: MyTheme.materialDarkTheme,
        theme: MyTheme.materialLightTheme,
        debugShowCheckedModeBanner: true,
        home: Scaffold(
          body: Container(),
        ),
      ),
    );
  }
}
