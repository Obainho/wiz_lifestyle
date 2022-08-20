import 'package:flutter/material.dart';
import '../widgets/homeTiles.dart';
//import 'package:textfields/routes/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 20,
        ),
        children: const [
          HomeTiles(
            image: "assets/hand.png",
            text: "John Rambo",
            subtitleIcon: true,
            text2: "Just another random text to...",
            text3: "6:43 AM",
          ),
          HomeTiles(
            image: "assets/wallet.png",
            text: "Peter Crouch",
            subtitleIcon: true,
            text2: "Just another random text to...",
            text3: "6:02 AM",
          ),
          HomeTiles(
            image: "assets/profile.jpg",
            text: "C. Ronaldo",
            subtitleIcon: false,
            text2: "Just another random text to...",
            text3: "5:34 AM",
          ),
          HomeTiles(
            image: "assets/profile.jpg",
            text: "Messi",
            subtitleIcon: true,
            text2: "Just another random text to...",
            text3: "5:29 AM",
          ),
          HomeTiles(
            image: "assets/obainho.jpg",
            text: "K. Benzema",
            subtitleIcon: false,
            text2: "Just another random text...",
            text3: "yesterday",
          ),
          HomeTiles(
            image: "assets/profile.jpg",
            text: "Rooney",
            subtitleIcon: true,
            text2: "Just another random text...",
            text3: "yesterday",
          ),
          HomeTiles(
            image: "assets/wallet.png",
            text: "Berbatov",
            subtitleIcon: false,
            text2: "Just another random text...",
            text3: "yesterday",
          ),
          HomeTiles(
            image: "assets/obainho.jpg",
            text: "Obainho",
            subtitleIcon: true,
            text2: "Just another random text...",
            text3: "yesterday",
          ),
          HomeTiles(
            image: "assets/wallet.png",
            text: "Luka Modric",
            subtitleIcon: true,
            text2: "Just another random text...",
            text3: "yesterday",
          ),
          HomeTiles(
            image: "assets/profile.jpg",
            text: "Sancho",
            subtitleIcon: true,
            text2: "Just another random text...",
            text3: "yesterday",
          ),
          HomeTiles(
            image: "assets/obainho.jpg",
            text: "Cavani",
            subtitleIcon: true,
            text2: "Just another random text...",
            text3: "yesterday",
          ),
          HomeTiles(
            image: "assets/profile.jpg",
            text: "Giovani",
            subtitleIcon: true,
            text2: "Just another random text to...",
            text3: "7/9/22",
          ),
          HomeTiles(
            image: "assets/wallet.png",
            text: "Jao Moutinho",
            subtitleIcon: true,
            text2: "Just another random text to...",
            text3: "7/9/22",
          ),
          HomeTiles(
            image: "assets/obainho.jpg",
            text: "Ferdinand",
            subtitleIcon: true,
            text2: "Just another random text to...",
            text3: "7/9/22",
          ),
          HomeTiles(
            image: "assets/wallet.png",
            text: "All Stars Academy",
            subtitleIcon: true,
            text2: "Just another random text to...",
            text3: "6/9/22",
          ),
          HomeTiles(
            image: "assets/profile.jpg",
            text: "David DeGea",
            subtitleIcon: true,
            text2: "Just another random text to...",
            text3: "6/9/22",
          ),
          HomeTiles(
            image: "assets/wallet.png",
            text: "Haaland",
            subtitleIcon: true,
            text2: "Just another random text to...",
            text3: "6/9/22",
          ),
          SizedBox(height: 50),
          Text(
            'Obainho Designs',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              //color: Color.fromARGB(255, 180, 178, 178),
            ),
          ),
        ],
      ),
    );
  }
}
