import 'package:flutter/material.dart';

class AppOnHover extends StatefulWidget {
  const AppOnHover({
    Key? key,
    required this.child,
    this.hoveredScalePercentage = 0.04,
  }) : super(key: key);

  final Widget child;
  final double hoveredScalePercentage;

  @override
  State<AppOnHover> createState() => AppOnHoverState();
}

@visibleForTesting
class AppOnHoverState extends State<AppOnHover>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late Animation scaleAnimation = Tween<double>(
          begin: 1 - widget.hoveredScalePercentage,
          end: 1 + widget.hoveredScalePercentage,)
      .animate(animationController);
  bool isHovered = false;
  bool isTapped = false;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300),);
    animationController.value = 0.5;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void onHover(bool isHovered) {
    isHovered = isHovered;
    isHovered
        ? animationController.animateTo(1)
        : animationController.animateTo(0.5);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController,
        builder: (context, Widget? child) {
          return MouseRegion(
            onEnter: (event) => onHover(true),
            onExit: (event) => onHover(false),
            cursor: SystemMouseCursors.click,
            child: Transform(
                alignment: FractionalOffset.center,
                transform: Matrix4.identity()
                  ..scale(scaleAnimation.value as double,
                      scaleAnimation.value as double,),
                child: GestureDetector(
                    onTapDown: (_) {
                      isTapped = true;
                      animationController.animateTo(0);
                    },
                    onTapCancel: () {
                      isTapped = false;
                      animationController.animateTo(0.5);
                    },
                    onTap: () {
                      isTapped = false;
                      animationController.animateTo(0.5);
                    },
                    child: widget.child,),),
          );
        },);
  }
}
