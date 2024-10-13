# Change Log

## [1.0.2] - 2024-10-13
- Optimized performance for larger screens and higher-resolution displays.
- Added support for customizing the color of the heart icon (`likeIconColor`).
- Fixed minor bugs related to `onLike` callback execution when tapped rapidly.
- Improved accessibility by adding semantic labels for the heart icon.
- Enhanced compatibility with Flutter 3.x versions.

## [1.0.1] - 2024-10-13
- Improved double-tap like animation performance.
- Added customization options for the animation speed (`animationDuration`).
- Improved documentation and examples to make usage clearer.
- Provided a default heart icon for the like animation when no asset is provided.
- Added ability to customize the position of the like icon.

## [1.0.0] - 2024-10-13
- Initial release of the `tiktok_tap_heart_animation` package.
- Added support for double-tap to like feature with heart animation.
- Customizable heart icon (`likeWidget`) for double-tap effect.
- Added parameters for setting the size of the like icon (`likeWidth`, `likeHeight`).
- `onLike` callback added for executing logic on a double-tap event.
- Provided example app demonstrating the use of the `TikTokTapHeart`.