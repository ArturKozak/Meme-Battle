import 'package:flutter/material.dart';
import 'package:memebattle/constants/app_colors.dart';
import 'package:memebattle/constants/app_constants.dart';

class PlayerGameCardsMenu extends StatelessWidget {
  static const int itemCount = 5;
  static const double cardHeight = 200.0;
  static const double cardMargin = 15.0;
  static const double borderRadius = 20.0;

  static final PageController _pageController =
      PageController(viewportFraction: 0.9);

  const PlayerGameCardsMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: PageView.builder(
        reverse: true,
        physics: BouncingScrollPhysics(),
        onPageChanged: (value) {},
        controller: _pageController,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: AnimatedBuilder(
              animation: _pageController,
              builder: (context, child) {
                double value = 1.0;
                if (_pageController.position.haveDimensions) {
                  value = _pageController.page! - index;
                  value = (1 - (value.abs())).clamp(0.0, 1.0);
                } else if (index != 0) {
                  value = 0.0;
                }
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..translate(
                      MediaQuery.of(context).size.height /
                          2.1 *
                          (1 - value).abs(),
                      0.0,
                    ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Opacity(
                      opacity: value = value,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: AppConstant.smallPadding),
                        child: Container(
                          width: double.infinity / 2,
                          height: cardHeight,
                          margin: EdgeInsets.all(cardMargin),
                          decoration: BoxDecoration(
                            color: AppColors.backgroundColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(borderRadius)),
                            boxShadow: value == 0
                                ? null
                                : [AppColors.darkShadow, AppColors.lightShadow],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
