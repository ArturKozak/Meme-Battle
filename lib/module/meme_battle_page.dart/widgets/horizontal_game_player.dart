import 'package:flutter/material.dart';
import 'package:memebattle/constants/app_constants.dart';
import 'package:memebattle/module/meme_battle_page.dart/widgets/player_horizontal_card_item.dart';
import 'package:memebattle/module/meme_battle_page.dart/widgets/player_cards_list.dart';
import 'package:memebattle/module/meme_battle_page.dart/widgets/player_small_avatar.dart';

class HorizontalGamePlayer extends StatelessWidget {
  static const double cardListHeight = 60.0;
  static const int itemCount = 5;

  final VoidCallback? onTap;

  const HorizontalGamePlayer({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppConstant.smallPadding,
        right: AppConstant.smallPadding,
        top: AppConstant.largePadding,
        bottom: AppConstant.smallPadding,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: onTap,
            child:
                PlayerSmallAvatar(horizontalPadding: AppConstant.smallPadding),
          ),
          SizedBox(
            height: cardListHeight,
            child: PlayerCardsList(
              scrollDirection: Axis.horizontal,
              child: PlayerHorizontalCardItem(),
              padding: .0,
              itemCount: itemCount,
            ),
          ),
        ],
      ),
    );
  }
}
