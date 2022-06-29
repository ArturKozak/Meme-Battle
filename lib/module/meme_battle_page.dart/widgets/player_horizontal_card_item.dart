import 'package:flutter/material.dart';
import 'package:memebattle/constants/app_colors.dart';

class PlayerHorizontalCardItem extends StatelessWidget {
  static const double cardWidht = 30.0;
  static const double cardMargin = 5.0;
  static const double borderRadius = 10.0;

  const PlayerHorizontalCardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidht,
      margin: EdgeInsets.all(cardMargin),
      decoration: BoxDecoration(
        color: AppColors.lightBackColor,
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        boxShadow: [AppColors.darkShadow, AppColors.lightShadow],
      ),
    );
  }
}
