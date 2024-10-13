# TapHeartAnimation

**TapHeartAnimation** is a Flutter package that provides a customizable widget allowing users to like content, such as videos or images, by double-tapping on them, just like the TikTok double-tap feature.

## Features

- **Tap Heart Animation to Like** with heart animation.
- Customizable heart icon size and color.
- Easy to integrate into any Flutter app.
- Supports animations for a smooth user experience.

## Installation

To use this package, add `tiktok_tap_heart_animation` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
     tiktok_tap_heart_animation: ^1.0.1

Example
Here’s a more advanced example with custom animation duration and icon settings:

DoubleTapLike(
  child: Image.network('https://example.com/video.jpg'),
  onLike: () {
    print('Liked the content!');
  },
  animationDuration: Duration(milliseconds: 500),
  likeIconColor: Colors.pinkAccent,
  likeIconSize: 80.0,
);
