import 'package:flutter/material.dart';
import 'package:memebattle/constants/app_colors.dart';

class PlayerVerticalCardItem extends StatelessWidget {
  static const double cardHeight = 30.0;
  static const double cardMargin = 5.0;
  static const double borderRadius = 10.0;

  const PlayerVerticalCardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      margin: EdgeInsets.all(cardMargin),
      decoration: BoxDecoration(
        color: AppColors.lightBackColor,
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        boxShadow: [AppColors.darkShadow, AppColors.lightShadow],
      ),
    );
  }
}
