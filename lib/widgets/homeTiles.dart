import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTiles extends StatelessWidget {
  final String image;
  final String text;
  final bool subtitleIcon;
  final String text2;
  final String text3;

  const HomeTiles(
      {Key? key,
      required this.image,
      required this.text,
      required this.subtitleIcon,
      required this.text2,
      required this.text3});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(
          image,
        ),
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          //color: Color.fromARGB(255, 236, 238, 240),
        ),
      ),
      subtitle: Row(
        children: [
          subtitleIcon
              ? const Icon(
                  Icons.checklist_rtl,
                  size: 15,
                  //color: Colors.white38,
                )
              : const Icon(
                  Icons.check,
                  size: 15,
                  //color: Colors.white38,
                ),
          const SizedBox(width: 5),
          Text(
            text2,
            style: GoogleFonts.sanchez(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              //color: Colors.white38,
            ),
          ),
        ],
      ),
      trailing: Text(
        text3,
        style: GoogleFonts.sanchez(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          //color: Colors.white38,
        ),
      ),
    );
  }
}
