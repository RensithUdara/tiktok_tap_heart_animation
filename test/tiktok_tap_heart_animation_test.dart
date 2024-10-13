import 'package:flutter/material.dart';
import 'package:tiktok_tap_heart_animation/tiktok_tap_heart_animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: TikTokDoubleTapLike(
            child: Container(
              width: 300,
              height: 500,
              color: Colors.blueGrey,
              child: Center(child: Text('Double Tap to Like')),
            ),
            onLike: () {
              print('Liked!');
            },
          ),
        ),
      ),
    );
  }
}
