import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiz_lifestyle/routes/routes.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 61, 61, 61),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 45, 109, 247),
        title: Text(
          'Wiz Lifestyle',
          style: GoogleFonts.sanchez(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Lets Get You',
              style: GoogleFonts.sanchez(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 238, 238, 245),
              ),
            ),
            Text(
              'Connected...',
              style: GoogleFonts.sanchez(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 230, 114, 6),
              ),
            ),
            const SizedBox(height: 20),
            const Image(
              image: AssetImage(
                'assets/hand.png',
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 56, 42, 255),
                    //onPrimary: Colors.blueGrey,
                    //elevation: 10,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(RouteManager.loginPage);
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 255, 113, 19),
                    //onPrimary: Colors.blueGrey,
                    //elevation: 10,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(RouteManager.registerPage);
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Obainho Designs',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 180, 178, 178),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
