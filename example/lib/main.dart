import 'package:flutter/material.dart';
import 'package:tiktok_tap_heart_animation/tiktok_tap_heart_animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TikTok Tap Heart Animation Example'),
        ),
        body: Center(
          child: TikTokDoubleTapLike(
            child: Container(
              width: 300,
              height: 500,
              color: Colors.blueGrey,
              child: Center(
                child: Text('Tap to Heart'),
              ),
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
