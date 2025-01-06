import 'package:flutter/material.dart';

class ColorUtils {
  // Getter for converting hex string to Color
  static Color getColorFromHex(String hexColor) {
    // Ensure the string starts with a hash
    hexColor = hexColor.replaceAll('#', '');

    // If the color doesn't include alpha, add 'FF' for full opacity
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }

    // Convert the string to an integer and return as Color
    return Color(int.parse(hexColor, radix: 16));
  }
}

class DomainController {}
