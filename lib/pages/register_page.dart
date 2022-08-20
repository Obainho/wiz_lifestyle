import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiz_lifestyle/pages/login_page.dart';
import 'package:wiz_lifestyle/widgets/inputfield.dart';
import '../routes/routes.dart';
import '../widgets/defaults.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String userText = '';
  String lastText = '';

  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController emailAddress = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  @override
  void initState() {
    super.initState();
    //usernamecontroller.text = 'John'; //For setting default value to the textfield
  }

  @override
  void dispose() {
    super.dispose();
    firstname.dispose();
    lastname.dispose();
    emailAddress.dispose();
    phoneNumber.dispose();
    username.dispose();
    password.dispose();
    confirmPassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromARGB(255, 104, 187, 255),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        //backgroundColor: const Color.fromARGB(255, 45, 109, 247),
        title: Text(
          'Register on Wiz Lifestyle',
          style: GoogleFonts.sanchez(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Create Account',
                  style: GoogleFonts.sanchez(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    //color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                InputField(
                  controller: firstname,
                  inputHint: 'First Name',
                  obscureText: false,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 20),
                InputField(
                  controller: lastname,
                  inputHint: 'Last Name',
                  obscureText: false,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 20),
                InputField(
                  controller: emailAddress,
                  inputHint: 'Email Address',
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),
                InputField(
                  controller: phoneNumber,
                  inputHint: 'Phone Number',
                  obscureText: false,
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 20),
                InputField(
                  controller: username,
                  inputHint: 'Username',
                  obscureText: false,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      'Please no "uppercase" characters \nallowed.',
                      style: GoogleFonts.sanchez(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                PasswordField(
                  obscureText: true,
                  inputHint: 'Password',
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      'Make sure to include at least one \n"uppercase" character and at least \none "numeric" character.',
                      style: GoogleFonts.sanchez(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                PasswordField(
                  obscureText: true,
                  inputHint: 'Confirm Password',
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
                        setState(() {
                          userText = firstname.text;
                          lastText = lastname.text;
                        });
                        showDialog(
                          barrierDismissible:
                              false, // makes the dialogBox fixed without going of on tap of the screen
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Confirm'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    '$userText $lastText',
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.sanchez(
                                      fontSize: 15,
                                      color:
                                          const Color.fromARGB(255, 2, 6, 255),
                                    ),
                                  ),
                                  Text(
                                    'Would you like to continue?',
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
                                            builder: (context) => LoginPage(
                                              firstname: firstname.text,
                                              lastname: lastname.text,
                                              email: emailAddress.text,
                                            ),
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
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.sanchez(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(RouteManager.loginPage);
                      },
                      child: Text(
                        'Login here.',
                        style: GoogleFonts.sanchez(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 7, 44, 255),
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
                    //color: Color.fromARGB(255, 180, 178, 178),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
