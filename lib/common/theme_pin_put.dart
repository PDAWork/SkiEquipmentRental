import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class ThemePinPut {
  static const defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          width: 4.0,
          color: Color(0xFFD9DCE2),
        ),
      ),
      shape: BoxShape.rectangle,
    ),
  );
  static final focusedPinTheme = defaultPinTheme.copyDecorationWith(
    border: const Border(
      bottom: BorderSide(
        width: 4.0,
        color: Color(0xFF3CAAE8),
      ),
    ),
    shape: BoxShape.rectangle,
  );
}
