import 'package:memebattle/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:memebattle/constants/app_constants.dart';
import 'package:memebattle/module/meme_battle_page.dart/widgets/meme_cards_table.dart';
import 'package:memebattle/module/meme_battle_page.dart/widgets/meme_game_statistic.dart';
import 'package:memebattle/module/meme_battle_page.dart/widgets/player_game_cards_menu.dart';
import 'package:memebattle/module/meme_battle_page.dart/widgets/vertical_game_player.dart';

class MemeBattlePage extends StatefulWidget {
  const MemeBattlePage({Key? key}) : super(key: key);

  @override
  State<MemeBattlePage> createState() => _MemeBattlePageState();
}

class _MemeBattlePageState extends State<MemeBattlePage>
    with TickerProviderStateMixin {
  static const double questionTextBottomPosition = 220;
  static const double animationBottomPosition = 110;
  static const double playerGameCardMenuBottomPosition = -240;
  static const double memeGameStatisticBottomPosition = -100;
  static const int maxLines = 5;
  static const String question =
      'question dsadsa dsdasdas asdsadsadsadsa dsadasd sasa dsadsad sadasdsa asdsadsa asdasd asdasd';

  late final AnimationController animationController;
  late final Animation<Offset> animation;

  late final AnimationController statisticAnimationController;
  late final Animation<Offset> statisticAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
    );

    animation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0.0, -1.0),
    ).animate(animationController);

    statisticAnimationController = AnimationController(
      vsync: this,
    );

    statisticAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0.0, -1.0),
    ).animate(animationController);
  }

  Future moveToDowm() async {
    animationController.animateTo(
      1.0,
      duration: const Duration(milliseconds: 600),
      curve: Curves.fastOutSlowIn,
    );
  }

  Future moveToUp() async {
    statisticAnimationController.animateTo(
      1.0,
      duration: const Duration(milliseconds: 600),
      curve: Curves.fastOutSlowIn,
    );
  }

  Future<void> reset() async {
    if (animationController.value == 0) {
      return;
    }
    statisticAnimationController.animateTo(
      .0,
      duration: const Duration(milliseconds: 600),
      curve: Curves.fastOutSlowIn,
    );
    Future.delayed(const Duration(milliseconds: 2000));

    animationController.animateTo(
      .0,
      duration: const Duration(milliseconds: 600),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: AppColors.defaultGradient,
          ),
          child: Stack(
            children: [
              Positioned(
                  top: .0,
                  right: .0,
                  left: .0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      VerticalGamePlayer(onTap: () async {
                        await moveToDowm().whenComplete(
                          () => moveToUp(),
                        );
                      }),
                      VerticalGamePlayer(),
                      VerticalGamePlayer(),
                    ],
                  )),
              Align(
                  alignment: Alignment(0.0, -.1),
                  child: MemeBattleCardsTable(
                    animController: animationController,
                  )),
              AnimatedBuilder(
                animation: animationController,
                builder: (_, child) {
                  return Positioned(
                    bottom: questionTextBottomPosition -
                        (animationController.value * animationBottomPosition),
                    left: .0,
                    right: .0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppConstant.largePadding),
                      child: Text(
                        question,
                        maxLines: maxLines,
                        textAlign: TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: AppColors.hoverClor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  );
                },
              ),
              AnimatedBuilder(
                animation: animationController,
                builder: (_, child) {
                  return Positioned(
                    bottom: animationController.value *
                        playerGameCardMenuBottomPosition,
                    right: .0,
                    left: .0,
                    child: PlayerGameCardsMenu(),
                  );
                },
              ),
              AnimatedBuilder(
                animation: statisticAnimationController,
                builder: (_, child) {
                  return Positioned(
                    bottom: memeGameStatisticBottomPosition +
                        animationController.value * animationBottomPosition,
                    right: .0,
                    left: .0,
                    child: MemeGameStatistic(
                      onTap: () => reset(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
