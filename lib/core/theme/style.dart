import 'package:customs/core/utils/design_config.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static String reg = 'TajawalRegular';
  static String meduim = 'TajawalMedium';
  static String bold = 'TajawalBold';

  // }

  // static TextStyle font25Bold(context) => TextStyle(
  //   fontSize: getResponsiveFontSize(context, fontSize: 25),
  //   fontWeight: FontWeight.bold,
  //   fontFamily: bold,
  // );
  // static TextStyle font18Medium(context) => TextStyle(
  //   fontSize: getResponsiveFontSize(context, fontSize: 18),
  //   fontFamily: meduim,
  // );
  // static TextStyle font20Bold(context) => TextStyle(
  //   fontSize: getResponsiveFontSize(context, fontSize: 20),
  //   fontWeight: FontWeight.bold,
  //   fontFamily: bold,
  // );
  // static TextStyle font20Medium(context) => TextStyle(
  //   fontSize: getResponsiveFontSize(context, fontSize: 20),
  //   fontWeight: FontWeight.bold,
  //   fontFamily: meduim,
  // );

  // f16
  static TextStyle font16Meduim(context) => TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 16),

    fontFamily: meduim,
  );
  // f16bold
  static TextStyle font16Bold(context) => TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontWeight: FontWeight.bold,
    fontFamily: bold,
  );
  // f14
  static TextStyle font14Meduim(context) => TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 14),
    fontFamily: meduim,
  );
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
