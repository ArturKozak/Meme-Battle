import 'package:flutter/material.dart';

class PlayerCardsList extends StatelessWidget {
  static const double heightFactor = .5;

  final Axis scrollDirection;
  final Widget child;
  final double padding;
  final int itemCount;

  const PlayerCardsList(
      {Key? key,
      required this.scrollDirection,
      required this.child,
      required this.padding,
      required this.itemCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(padding),
      scrollDirection: scrollDirection,
      shrinkWrap: true,
      itemCount: itemCount,
      itemBuilder: ((context, index) => Align(
            alignment: Alignment.topCenter,
            heightFactor: heightFactor,
            child: child,
          )),
    );
  }
}
