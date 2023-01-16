import 'package:flutter/material.dart';
import 'package:gamestore/models/game.dart';

class HeaderSection extends StatelessWidget {
  final Game game;
  const HeaderSection(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Image.asset(
            game.icon,
            width: 80,
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                game.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                game.type,
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 15,
                      ),
                      Text(
                        game.score.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 15,
                      ),
                      Text(
                        '${game.download.toString()} k',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
