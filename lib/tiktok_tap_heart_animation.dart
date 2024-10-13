import 'package:flutter/material.dart';

class TikTokTapHeart extends StatefulWidget {
  final Widget child;
  final Function onLike;
  final Duration animationDuration;
  final Color likeIconColor;
  final double likeIconSize;

  const TikTokTapHeart({
    Key? key,
    required this.child,
    required this.onLike,
    this.animationDuration = const Duration(milliseconds: 400),
    this.likeIconColor = Colors.red,
    this.likeIconSize = 100.0,
  }) : super(key: key);

  @override
  _TikTokTapHeartState createState() => _TikTokTapHeartState();
}

class _TikTokTapHeartState extends State<TikTokTapHeart>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isLiked = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleDoubleTap() {
    setState(() {
      _isLiked = true;
    });
    _controller.forward().then((_) {
      _controller.reverse();
      setState(() {
        _isLiked = false;
      });
    });
    widget.onLike();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: _handleDoubleTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          widget.child,
          if (_isLiked)
            ScaleTransition(
              scale: _animation,
              child: Icon(
                Icons.favorite,
                color: widget.likeIconColor,
                size: widget.likeIconSize,
              ),
            ),
        ],
      ),
    );
  }
}
