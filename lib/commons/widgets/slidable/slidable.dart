import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MySlideable extends StatelessWidget {
  const MySlideable({
    required this.child,
    this.onDeleteTap,
    this.onUpdateTap,
    super.key,
  });

  final Widget child;
  final Function(BuildContext context)? onDeleteTap, onUpdateTap;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      // The start action pane is the one at the left or the top side.
      endActionPane: ActionPane(
        // A motion is a widget used to control how the pane animates.
        motion: const ScrollMotion(),

        // All actions are defined in the children parameter.
        children: [
          // A SlidableAction can have an icon and/or a label.
          SlidableAction(
            onPressed: onDeleteTap,
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
          SlidableAction(
            onPressed: onUpdateTap,
            backgroundColor: Color(0xFF21B7CA),
            foregroundColor: Colors.white,
            icon: Icons.edit,
            label: 'Edit',
          ),
        ],
      ),
      child: child,
    );
  }
}
