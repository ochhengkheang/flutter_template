import 'package:flutter/material.dart';

class MyListViewLayout extends StatelessWidget {
  const MyListViewLayout({
    required this.itemCount,
    required this.itemBuilder,
    this.physic = const ScrollPhysics(),
    super.key,
  });

  final int itemCount;
  final Widget? Function(BuildContext context, int index) itemBuilder;
  final ScrollPhysics? physic;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: physic,
      shrinkWrap: true,
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}

