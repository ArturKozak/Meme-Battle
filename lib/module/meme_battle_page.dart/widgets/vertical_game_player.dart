import 'package:flutter/material.dart';
import 'package:memebattle/constants/app_constants.dart';
import 'package:memebattle/module/meme_battle_page.dart/widgets/player_cards_list.dart';
import 'package:memebattle/module/meme_battle_page.dart/widgets/player_small_avatar.dart';
import 'package:memebattle/module/meme_battle_page.dart/widgets/player_vertical_card_item.dart';

class VerticalGamePlayer extends StatelessWidget {
  static const double cardListWidth = 60.0;
  static const int itemCount = 5;

  final VoidCallback? onTap;

  const VerticalGamePlayer({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppConstant.smallPadding,
        right: AppConstant.smallPadding,
        top: AppConstant.largePadding,
        bottom: AppConstant.smallPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            onPressed: onTap,
            child: PlayerSmallAvatar(
              verticalPadding: AppConstant.smallPadding,
            ),
          ),
          SizedBox(
            width: cardListWidth,
            child: PlayerCardsList(
              scrollDirection: Axis.vertical,
              child: PlayerVerticalCardItem(),
              padding: .0,
              itemCount: itemCount,
            ),
          ),
        ],
      ),
    );
  }
}
