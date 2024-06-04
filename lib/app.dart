import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/utils/routes/routes_config.dart';
import 'package:flutter_template/utils/themes/themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp.router(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        title: 'Flutter_Template',
        darkTheme: MyTheme.materialDarkTheme,
        theme: MyTheme.materialLightTheme,
        debugShowCheckedModeBanner: true,
        routerConfig: GoRoutesConfig.router,
      ),
    );
  }
}
