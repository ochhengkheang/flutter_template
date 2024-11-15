import 'package:flutter/material.dart';
import 'package:flutter_template/utils/config.dart';

class MyExampleScreen extends StatelessWidget {
  const MyExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(MyConfig.flavor
          ),
          Text(MyConfig().apiUrl),
        ],
      ),
    );
  }
}
