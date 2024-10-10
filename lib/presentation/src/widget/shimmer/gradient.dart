import 'package:flutter/material.dart';

const LinearGradient shimmerGradient = LinearGradient(
  colors: [
    Color(0xff22272e),
    Color(0xff0D1117),
    Color(0xff22272e),
  ],
  stops: [
    0.1,
    0.3,
    0.4,
  ],
  begin: Alignment(-2.0, -0.3),
  end: Alignment(2.0, 0.3),
  tileMode: TileMode.clamp,
);