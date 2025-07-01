import 'package:flutter/material.dart';

class RotatingImage extends StatefulWidget {
  final String imagePath;
  final double width;
  final double height;
  final Duration duration;

  const RotatingImage({
    super.key,
    required this.imagePath,
    this.width = 50,
    this.height = 50,
    this.duration = const Duration(seconds: 2),
  });

  @override
  State<RotatingImage> createState() =>
      _RotatingImageState();
}

class _RotatingImageState
    extends State<RotatingImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..repeat();
  }

  @override
  void didUpdateWidget(
    covariant RotatingImage oldWidget,
  ) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.duration != widget.duration) {
      _animationController.duration =
          widget.duration;
      _animationController.repeat();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      child: Image.asset(
        widget.imagePath,
        width: widget.width,
        height: widget.height,
      ),
      builder:
          (
            BuildContext context,
            Widget? child,
          ) {
            return Transform.rotate(
              angle:
                  _animationController.value *
                  2.0 *
                  3.1415926535,
              child: child,
            );
          },
    );
  }
}
