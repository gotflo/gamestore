import 'package:flutter/material.dart';

import 'package:gamestore/models/game.dart';
import 'package:gamestore/pages/detail/widgets/detail_sliver.dart';
import 'package:gamestore/pages/detail/widgets/info.dart';

class DetailGame extends StatelessWidget {
  const DetailGame({
    Key? key,
    required this.game,
  }) : super(key: key);

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailSliverDelegate(
              game: game,
              expandedHeight: 360,
              roundedContainerHeight: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: GameInfo(game),
          )
        ],
      ),
    );
  }
}
