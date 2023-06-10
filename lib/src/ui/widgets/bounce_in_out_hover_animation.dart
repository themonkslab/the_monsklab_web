import 'package:flutter/material.dart';

class BounceInOutHoverAnimation extends StatefulWidget {
  const BounceInOutHoverAnimation({
    super.key,
    required this.child,
    this.onTap,
    this.onHover,
    this.onHoverOut,
    this.scaleFactor = 1.04,
    this.opacityFactor = 1,
    this.duration = const Duration(milliseconds: 200),
  });

  final Widget child;
  final VoidCallback? onTap;
  final VoidCallback? onHover;
  final VoidCallback? onHoverOut;
  final double scaleFactor;
  final Duration duration;
  final double opacityFactor;

  @override
  BounceInOutHoverAnimationState createState() =>
      BounceInOutHoverAnimationState();
}

class BounceInOutHoverAnimationState extends State<BounceInOutHoverAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;

  bool _isHovering = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    _scaleAnimation = Tween<double>(
      begin: 1,
      end: widget.scaleFactor,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
      ),
    );

    _opacityAnimation = Tween<double>(
      begin: 1,
      end: widget.opacityFactor,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
      ),
    );

    _animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onHover() {
    if (!_isHovering) {
      _isHovering = true;
      widget.onHover?.call();
      _animationController.forward();
    }
  }

  void _onHoverOut() {
    if (_isHovering) {
      _isHovering = false;
      widget.onHoverOut?.call();
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(),
      onExit: (_) => _onHoverOut(),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Transform.scale(
          scale: _scaleAnimation.value,
          child: Opacity(
            opacity: _opacityAnimation.value,
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
