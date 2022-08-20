import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiz_lifestyle/pages/register_page.dart';
import 'package:wiz_lifestyle/pages/user_page.dart';
import '../widgets/defaults.dart';
import '../widgets/inputfield.dart';
import '../routes/routes.dart';

class LoginPage extends StatefulWidget {
  LoginPage(
      {Key? key,
      required this.firstname,
      required this.lastname,
      required this.email,
      })
      : super(key: key);

  String? firstname;
  String? lastname;
  String? email;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String userText = 'None yet';

  TextEditingController usernamecontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    //usernamecontroller.text = 'John'; //For setting default value to the textfield
  }

  @override
  void dispose() {
    super.dispose();
    usernamecontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromARGB(255, 104, 187, 255),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        //backgroundColor: const Color.fromARGB(255, 45, 109, 247),
        title: Text(
          'Wiz Lifestyle',
          style: GoogleFonts.sanchez(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(RouteManager.homePage);
        },
        elevation: 10,
        backgroundColor: const Color.fromARGB(255, 2, 6, 255),
        child: const Icon(
          Icons.home,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Login to ',
                        style: GoogleFonts.sanchez(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          //color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: 'Portal',
                        style: GoogleFonts.sanchez(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromARGB(255, 2, 6, 255),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InputField(
                  controller: usernamecontroller,
                  inputHint: 'Username',
                  obscureText: false,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 20),
                PasswordField(
                  obscureText: true,
                  inputHint: 'Password',
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 56, 42, 255),
                        //onPrimary: Colors.blueGrey,
                        //elevation: 10,
                      ),
                      onPressed: () {
                        showDialog(
                          barrierDismissible:
                              false, // makes the dialogBox fixed without going of on tap of the screen
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Confirm login'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    usernamecontroller.text,
                                    style: GoogleFonts.sanchez(
                                      fontSize: 15,
                                      color:
                                          const Color.fromARGB(255, 2, 6, 255),
                                    ),
                                  ),
                                  Text(
                                    'Please confirm login',
                                    style: GoogleFonts.sanchez(fontSize: 15),
                                  ),
                                ],
                              ),
                              actions: [
                                ButtonBar(
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('No'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => UserPage(
                                                firstname: widget.firstname,
                                                lastname: widget.lastname,
                                                email: widget.email),
                                          ),
                                        );
                                      },
                                      child: const Text('Yes'),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'New user?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Register here',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 56, 42, 255),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 120),
                const Text(
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
          ),
        ),
      ),
    );
  }
}
