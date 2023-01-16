import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + 15,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "GotFlo,",
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                "What would you like play ?",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          CircleAvatar(
            child: Image.asset(
              "assets/images/avatar.png",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
