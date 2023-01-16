import 'package:flutter/material.dart';
import 'package:gamestore/pages/home/widgets/newest.dart';
import 'package:gamestore/pages/home/widgets/popular.dart';
import 'package:google_fonts/google_fonts.dart';

class CategorySection extends StatelessWidget {
  CategorySection({Key? key}) : super(key: key);

  final categories = [
    {
      'icon': Icons.track_changes_outlined,
      'color': const Color.fromARGB(255, 15, 190, 123),
      'title': 'Arcade',
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': const Color(0xFF5E9AC2),
      'title': 'Racing',
    },
    {
      'icon': Icons.casino_outlined,
      'color': const Color(0xFFA8F18C),
      'title': 'Strategy',
    },
    {
      'icon': Icons.sports_esports,
      'color': const Color(0xFFC25EBE),
      'title': 'More',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      decoration: const BoxDecoration(
        color: Color(0xFFF6F8FF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 140,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        color: categories[index]['color'] as Color,
                      ),
                      child: Icon(
                        categories[index]['icon'] as IconData,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      categories[index]['title'] as String,
                      style: GoogleFonts.poppins(
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                  ],
                );
              }),
              separatorBuilder: ((context, index) => const SizedBox(
                    width: 30,
                  )),
              itemCount: categories.length,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              "Popular game",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          PopularGame(),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              "Newest game",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          NewestGame(),
        ],
      ),
    );
  }
}
