import 'package:flutter/material.dart';
import 'package:gamestore/models/game.dart';

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final Game game;
  final double expandedHeight;
  final double roundedContainerHeight;

  DetailSliverDelegate({
    required this.game,
    required this.expandedHeight,
    required this.roundedContainerHeight,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Hero(
          tag: game.name,
          child: Image.asset(
            game.bgImage,
            width: MediaQuery.of(context).size.width,
            height: expandedHeight,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
                left: 25,
                right: 25,
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          top: expandedHeight - roundedContainerHeight - shrinkOffset,
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: roundedContainerHeight,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              width: 60,
              height: 5,
              color: const Color.fromARGB(255, 15, 190, 123),
            ),
          ),
        )
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
