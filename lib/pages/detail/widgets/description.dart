import 'package:flutter/material.dart';
import 'package:gamestore/models/game.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class DescriptionSection extends StatelessWidget {
  final Game game;
  const DescriptionSection(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ReadMoreText(
        game.description,
        trimLines: 2,
        colorClickableText: const Color.fromARGB(255, 15, 190, 123),
        trimMode: TrimMode.Line,
        trimCollapsedText: 'Plus',
        trimExpandedText: ' Réduire',
        style: GoogleFonts.poppins(
          color: Colors.grey.withOpacity(0.7),
          height: 1.5,
        ),
      ),
    );
  }
}
