import 'package:flutter/material.dart';
import 'package:lady_driver/core/theme/app_padding.dart';

extension PaddingExtension on Widget {
  Widget paddingAll([double? value]) {
    return Padding(
      padding: EdgeInsets.all((value ?? AppPadding.padding(20))),
      child: this,
    );
  }
}

extension AppMediaQuery on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}
