import 'package:flutter/material.dart';

class MyListViewLayout extends StatelessWidget {
  const MyListViewLayout({
    required this.itemCount,
    required this.itemBuilder,
    super.key,
  });

  final int itemCount;
  final Widget? Function(BuildContext context, int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true, itemCount: itemCount, itemBuilder: itemBuilder);
  }
}
