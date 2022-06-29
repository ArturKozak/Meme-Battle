import 'package:memebattle/constants/app_colors.dart';
import 'package:memebattle/constants/app_constants.dart';
import 'package:memebattle/constants/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:memebattle/module/meme_battle_page.dart/widgets/home_cart_button.dart';

class MemeGameStatistic extends StatelessWidget {
  static const double statisticHeight = 70.0;
  static const double statisticWidth = 200.0;
  static const double statisticInfoHeight = 50.0;
  static const double statisticInfoWidth = 180.0;
  static const double statisticInfoTopPosition = 10.0;
  static const double statisticInfoBorderRadius = 50.0;
  static const double avatarTopPosition = 10.0;
  static const double avatarRightPosition = 40.0;
  static const double avatarRadius = 25.0;

  final VoidCallback? onTap;

  const MemeGameStatistic({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: .0,
        left: AppConstant.largePadding,
        right: AppConstant.largePadding,
        bottom: AppConstant.smallPadding,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: statisticWidth,
            height: statisticHeight,
            child: Stack(
              children: [
                Positioned(
                  top: statisticInfoTopPosition,
                  child: Container(
                    width: statisticInfoWidth,
                    height: statisticInfoHeight,
                    decoration: const BoxDecoration(
                      color: AppColors.backgroundColor,
                      borderRadius: BorderRadius.all(
                          Radius.circular(statisticInfoBorderRadius)),
                      boxShadow: [AppColors.darkShadow, AppColors.lightShadow],
                    ),
                  ),
                ),
                const Positioned(
                  top: avatarTopPosition,
                  right: avatarRightPosition,
                  child: CircleAvatar(
                    radius: avatarRadius,
                    backgroundColor: AppColors.hoverClor,
                  ),
                ),
              ],
            ),
          ),
          HomeSvgButton(
            iconAsset: AppIcons.statistics,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
