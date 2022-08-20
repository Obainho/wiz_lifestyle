import 'package:flutter/material.dart';
import 'pages/main_page.dart';
import 'routes/routes.dart';

void main() {
  runApp(const MyApp());
}
  var indexClicked = 0;
  
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData.dark().copyWith(
      //   primaryColor: Colors.blue,
      //   scaffoldBackgroundColor: Colors.blueGrey,
      // ),
      
      // theme: ThemeData(
      //   primaryColor: const Color.fromARGB(255, 61, 61, 61),
      //   //scaffoldBackgroundColor: const Color.fromARGB(255, 61, 61, 61),
      //   fontFamily: 'RobotoMono',
      // ),
      home: Mainpage(),
      initialRoute: RouteManager.homePage,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}