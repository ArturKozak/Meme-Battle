import 'package:memebattle/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSvgButton extends StatelessWidget {
  static const iconSize = 35.0;

  final String iconAsset;
  final VoidCallback? onTap;

  const HomeSvgButton({Key? key, required this.iconAsset, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: SvgPicture.asset(
          iconAsset,
          width: iconSize,
          color: AppColors.hoverClor,
        ),
      ),
    );
  }
}
