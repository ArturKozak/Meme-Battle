import 'package:flutter/material.dart';
import 'package:memebattle/constants/app_colors.dart';

class MemeBattleCardsTable extends StatelessWidget {
  static const double cardHeight = 150.0;
  static const double cardWidth = 250.0;
  static const double borderRadius = 10.0;
  static const double koefAnimationHeight = 75.0;
  static const double koefAnimationWidth = 100.0;
  static const double koefAnimationBorderRadius = 15.0;
  static const int itemCount = 1;

  final AnimationController animController;

  const MemeBattleCardsTable({
    Key? key,
    required this.animController,
  }) : super(key: key);

  // ignore: todo
  //TODO: change size
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animController,
      builder: (_, child) {
        return Container(
          width: cardWidth + animController.value * koefAnimationWidth,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: ((context, index) => Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      borderRadius +
                          animController.value * koefAnimationBorderRadius,
                    ),
                  ),
                  elevation: 5,
                  color: AppColors.activeColor,
                  child: SizedBox(
                    height:
                        cardHeight + animController.value * koefAnimationHeight,
                  ),
                )),
            itemCount: itemCount,
          ),
        );
      },
    );
  }
}
