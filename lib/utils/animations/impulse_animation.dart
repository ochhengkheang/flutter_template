import 'package:flutter/material.dart';

class ImpulseAnimation extends StatefulWidget {
  final Duration duration;
  final double initialSize;
  final Color color;
  final Widget child;
  final VoidCallback onTap;

  const ImpulseAnimation({
    required Key key,
    this.duration = const Duration(milliseconds: 500),
    this.initialSize = 0,
    this.color = Colors.blue,
    required this.child,
    required this.onTap,
  }) : super(key: key);

  @override
  _ImpulseAnimationState createState() => _ImpulseAnimationState();
}

class _ImpulseAnimationState extends State<ImpulseAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _animation =
        Tween<double>(begin: widget.initialSize, end: widget.initialSize + 300)
            .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap.call(); // Execute onTap callback if provided
        if (_controller.isAnimating) {
          _controller.stop();
        }
        _controller.forward(from: 0);
      },
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Container(
            width: _animation.value,
            height: _animation.value,
            color: widget.color,
            child: Center(
              child: widget.child,
            ),
          );
        },
      ),
    );
  }
}
