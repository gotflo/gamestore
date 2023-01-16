import 'package:flutter/material.dart';
import 'package:gamestore/pages/home/widgets/category.dart';
import 'package:gamestore/pages/home/widgets/header.dart';
import 'package:gamestore/pages/home/widgets/search.dart';

Color myColor = const Color.fromARGB(255, 15, 190, 123);

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor,
      // backgroundColor: const Color(0xFF5F67EA),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(150, 50),
              child: Image.asset(
                "assets/images/bg_liquid.png",
                width: 200,
              ),
            ),
            Positioned(
              right: 0,
              top: 200,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: const Offset(180, 100),
                child: Image.asset(
                  "assets/images/bg_liquid.png",
                  width: 200,
                ),
              ),
            ),
            Column(
              children: [
                const HeaderSection(),
                const SearchSection(),
                CategorySection(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: navigationBar(),
    );
  }

  Widget navigationBar() {
    return Container(
      color: const Color(0xFFF6F8FF),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            selectedItemColor: myColor,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedItemColor: Colors.grey.withOpacity(0.7),
            type: BottomNavigationBarType.fixed,
            items: [
              const BottomNavigationBarItem(
                label: 'home',
                icon: Icon(
                  Icons.home_rounded,
                  size: 35,
                ),
              ),
              BottomNavigationBarItem(
                label: "Application",
                icon: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.more_horiz_outlined,
                    size: 25,
                    color: Colors.grey,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "Film",
                icon: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.play_arrow_rounded,
                    size: 25,
                    color: Colors.grey,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "Book",
                icon: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.auto_stories_rounded,
                    size: 25,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
