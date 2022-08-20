import 'package:flutter/material.dart';

import '../widgets/defaults.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 18, 19),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 90,
              color: const Color.fromARGB(255, 40, 40, 41),
              child: Column(
                children: [
                  const SectionTitle(text: 'Privacy and Security'),
                  ListTile(
                    leading: Container(
                      height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 61, 62, 63),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.lock_outline,
                        color: Defaults.bottomNavItemSelectedColor2,
                      ),
                    ),
                    title: Row(
                      children: const [
                        Text(
                          'Auto Login on app start',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            //fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    trailing: const ToggleSwitch(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 320,
              color: const Color.fromARGB(255, 40, 40, 41),
              child: Column(
                children: [
                  const SectionTitle(text: 'Appearance'),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Defaults.bottomNavBackgroundColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Appearance(text: 'Dark'),
                          const Appearance(text: 'Light'),
                          Container(
                            height: 50,
                            width: 120,
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10,
                                ),
                              ),
                              color: Defaults.bottomNavItemSelectedColor2,
                            ),
                            child: MaterialButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Text(
                                    'System default',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: SizedBox(
                      height: 60,
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 61, 62, 63),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: const Icon(
                              Icons.app_settings_alt,
                              color: Defaults.bottomNavItemSelectedColor2,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Theme',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              //fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(width: 95),
                          const CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 17,
                          ),
                          const SizedBox(width: 10),
                          const CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 17,
                          ),
                          const SizedBox(width: 10),
                          const CircleAvatar(
                            backgroundColor: Colors.deepOrange,
                            radius: 17,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const TileDivider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: SizedBox(
                      height: 60,
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 61, 62, 63),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: const Icon(
                              Icons.logo_dev_outlined,
                              color: Defaults.bottomNavItemSelectedColor2,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'App Icon',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              //fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(width: 125),
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 17,
                          ),
                          const SizedBox(width: 10),
                          const CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 17,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const TileDivider(),
                  ListTile(
                    leading: Container(
                      height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 61, 62, 63),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.videocam_outlined,
                        color: Defaults.bottomNavItemSelectedColor2,
                      ),
                    ),
                    title: Row(
                      children: const [
                        Text(
                          'Intro Video',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            //fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    trailing: const ToggleSwitch(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
