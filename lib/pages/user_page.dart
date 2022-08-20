import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiz_lifestyle/pages/calls.dart';
import 'package:wiz_lifestyle/pages/contacts.dart';
import 'package:wiz_lifestyle/pages/home_page.dart';
import 'package:wiz_lifestyle/pages/settings.dart';
import '../main.dart';
import '../routes/routes.dart';
import '../widgets/appDrawerDivider.dart';
import '../widgets/appDrawerTiles.dart';
import '../widgets/defaults.dart';

class UserPage extends StatefulWidget {
  UserPage({
    Key? key,
    required this.firstname,
    required this.lastname,
    required this.email,
  }) : super(key: key);

  String? firstname;
  String? lastname;
  String? email;

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    final pages = [
      const HomePage(),
      const ContactsPage(),
      const CallsPage(),
      const SettingsPage(),
    ];

    VoidCallback updateState(int index) {
      return () {
        setState(() {
          indexClicked = index;
        });
        Navigator.pop(context);
      };
    }

    return Scaffold(
      //backgroundColor: const Color.fromARGB(255, 104, 187, 255),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        //backgroundColor: const Color.fromARGB(255, 45, 109, 247),
        title: Text(
          'Wiz Lifestyle',
          style: GoogleFonts.sanchez(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: pages[indexClicked],
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 60, 61, 61),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/drawer.jpg"),
                ),
              ),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/placeholder.png"),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "${widget.firstname} ${widget.lastname}",
                      style: GoogleFonts.sanchez(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "${widget.email}",
                      style: GoogleFonts.sanchez(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // "Expanded" is a widget that gives a "ListView" unspecified height.
            // It helps the ListView to take up all available space in the column.
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  AppDrawerTiles(
                    index: 0,
                    onTap: updateState(0),
                  ),
                  AppDrawerTiles(
                    index: 1,
                    onTap: updateState(1),
                  ),
                  AppDrawerTiles(
                    index: 2,
                    onTap: updateState(2),
                  ),
                  AppDrawerTiles(
                    index: 3,
                    onTap: updateState(3),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: 26),
                    selectedTileColor: const Color.fromARGB(255, 88, 174, 245),
                    leading: const Icon(
                      Icons.logout,
                      color: Color.fromARGB(255, 209, 209, 209),
                      size: 25,
                    ),
                    title: Text(
                      'Logout',
                      style: GoogleFonts.sanchez(
                          color: const Color.fromARGB(255, 209, 209, 209),
                          fontSize: 16),
                    ),
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed(RouteManager.loginPage);
                      });
                    },
                  ),
                  const SizedBox(height: 250),
                  const AppDrawerDivider(),
                  // const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Obainho Designs",
                        style: GoogleFonts.sanchez(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Defaults.drawerItemColor,
                        ),
                      ),
                      const SizedBox(width: 100),
                      Text(
                        "Version 1.4.7",
                        style: GoogleFonts.sanchez(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          color: Defaults.drawerItemColor,
                        ),
                      ),
                    ],
                  ),
                  const AppDrawerDivider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
