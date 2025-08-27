import 'package:flutter/material.dart'
    show
        StatelessWidget,
        IconData,
        VoidCallback,
        BuildContext,
        Widget,
        IconButton,
        Icon,
        BorderRadius,
        RoundedRectangleBorder;
import 'package:flutter/services.dart' show HapticFeedback;

import '../../../config/constants/app_constants.dart' show AppConstants;

class IconButtonFilledComponent extends StatelessWidget {
  const IconButtonFilledComponent({
    required this.icon,
    required this.onPressed,
    this.useInBorderRadius = false,
    super.key,
  });
  final IconData icon;
  final VoidCallback onPressed;
  final bool useInBorderRadius;

  @override
  /// Builds an [IconButton] widget that displays an icon and
  /// responds to taps by calling [onPressed] and providing haptic
  /// feedback. The button's appearance is determined by the [icon]
  /// property.
  Widget build(final BuildContext context) => IconButton.filled(
    icon: Icon(icon),
    style: IconButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: useInBorderRadius
            ? BorderRadius.circular(AppConstants.inBorderRadius)
            : BorderRadius.circular(AppConstants.outBorderRadius),
      ),
    ),
    onPressed: () {
      HapticFeedback.vibrate();
      onPressed();
    },
  );
}
