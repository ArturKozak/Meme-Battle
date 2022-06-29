import 'package:flutter/material.dart';
import 'package:memebattle/constants/app_colors.dart';

class PlayerSmallAvatar extends StatelessWidget {
  static const double avatarRadius = 25.0;

  final double? horizontalPadding;
  final double? verticalPadding;

  const PlayerSmallAvatar(
      {Key? key, this.horizontalPadding, this.verticalPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding ?? .0,
        vertical: verticalPadding ?? .0,
      ),
      child: CircleAvatar(
        radius: avatarRadius,
        backgroundColor: AppColors.hoverClor,
      ),
    );
  }
}
