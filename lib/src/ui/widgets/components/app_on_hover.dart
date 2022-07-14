import 'package:flutter/material.dart';

class AppOnHover extends StatefulWidget {
  const AppOnHover({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  State<AppOnHover> createState() => _AppOnHoverState();
}

class _AppOnHoverState extends State<AppOnHover> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()
      ..scale(1.1, 1.1)
      ..translate(-2, -2);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();

    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        curve: Curves.bounceInOut,
        duration: const Duration(milliseconds: 300),
        transform: transform,
        child: widget.child,
      ),
    );
  }

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
