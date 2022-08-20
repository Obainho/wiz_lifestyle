import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiz_lifestyle/main.dart';
import 'defaults.dart';

class AppDrawerTiles extends StatelessWidget {
  final int index;
  final VoidCallback onTap;

  const AppDrawerTiles({
    Key? key,
    required this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListTile(
        onTap: onTap,
        selected: indexClicked == index,
        selectedTileColor: Defaults.drawerItemSelectedTileColor,
        leading: Icon(
          Defaults.drawerItemIcon[index],
          size: 25,
          color: indexClicked ==
                  index // sets the color of the tile depending on if clicked or not
              ? Defaults.drawerItemSelectedColor
              : Defaults.drawerItemColor,
        ),
        title: Text(
          Defaults.drawerItemText[index],
          style: GoogleFonts.sanchez(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: indexClicked == index
                ? Defaults.drawerItemSelectedColor
                : Defaults.drawerItemColor,
          ),
        ),
      ),
    );
  }
}
