import 'package:flutter/material.dart';

class Defaults {
  static const Color drawerItemColor = Color.fromARGB(255, 209, 209, 209);
  static const Color drawerItemSelectedColor = Color.fromARGB(255, 15, 88, 148);
  static const Color drawerItemSelectedTileColor =
      Color.fromARGB(255, 88, 174, 245);

  static final drawerItemText = [
    'Home',
    'Contacts',
    'Calls',
    'Settings',
  ];

  static final drawerItemIcon = [
    Icons.home,
    Icons.contacts_outlined,
    Icons.call,
    Icons.settings,
  ];

  static const Color bottomNavItemColor = Colors.blueGrey;
  static const bottomNavBackgroundColor = Color.fromARGB(242, 2, 2, 2);
  static const Color bottomNavItemSelectedColor2 =
      Color.fromARGB(255, 38, 74, 236);
  static const Color bottomNavItemSelectedColor =
      Color.fromARGB(255, 15, 88, 148);
  static const Color bottomNavItemSelectedTileColor =
      Color.fromARGB(255, 88, 174, 245);

  static final bottomNavItemText = [
    'Home'
        'Login',
    'Counter',
    'Profile',
    'Bookings',
    'Images',
  ];

  static final bottomNavItemIcon = [
    Icons.home_outlined,
    Icons.login,
    Icons.countertops_outlined,
    Icons.person,
    Icons.flight_takeoff,
    Icons.image_outlined,
  ];

  static var listItems = [
    "John",
    "Luke",
    "Peter",
    "Matthew",
    "Lawrence",
    "Kelvin",
    "Michael",
    "Emmanuel",
    "Austin",
    "Paul",
    "Thomas",
    "Hillary",
    "Jude",
    "Cosmas",
    "Andrew",
    "Johnson",
    "Jake",
    "Jacob",
    "Drew",
    "Jack",
    "Robert",
    "Lincoln",
    "Charles",
    "Marley",
    "Parker",
    "Scott",
    "Larry",
    "Smith",
  ];

  static var icons = [
    Icons.person,
    Icons.people,
    Icons.group_work,
    Icons.radio_button_unchecked,
    Icons.group,
    Icons.camera_outlined,
    Icons.video_camera_front_outlined,
    Icons.person,
    Icons.people,
    Icons.group_work,
    Icons.radio_button_unchecked,
    Icons.group,
    Icons.camera_outlined,
    Icons.video_camera_front_outlined,
    Icons.person,
    Icons.people,
    Icons.group_work,
    Icons.radio_button_unchecked,
    Icons.group,
    Icons.camera_outlined,
    Icons.video_camera_front_outlined,
    Icons.person,
    Icons.people,
    Icons.group_work,
    Icons.radio_button_unchecked,
    Icons.group,
    Icons.camera_outlined,
    Icons.video_camera_front_outlined,
  ];

  static var listItems2 = [
    "John",
    "Luke",
    "Peter",
    "Matthew",
    "Lawrence",
    "Kelvin",
    "Michael",
    "Emmanuel",
    "Austin",
    "Paul",
    "Thomas",
    "Hillary",
    "Jude",
    "Cosmas",
    "Andrew",
    "Johnson",
    "Jake",
    "Jacob",
    "Drew",
    "Jack",
    "Robert",
    "Lincoln",
    "Charles",
    "Marley",
    "Parker",
    "Scott",
    "Larry",
    "Smith",
  ];
}

Widget buildList() => ListView.builder(
      itemCount: Defaults.listItems.length,
      itemBuilder: (context, index) {
        final sortedItems = Defaults.listItems2
          ..sort((item1, item2) => item1.compareTo(item2));

        final itemList = sortedItems[index];

        return ListTile(
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.call,
                  color: Colors.blueGrey,
                ),
              ),
              const SizedBox(width: 5),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.videocam,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
          leading: Text(
            itemList,
            style: const TextStyle(
              fontSize: 17,
              color: Colors.white,
            ),
          ),
        );
      },
    );

class GridLayout extends StatelessWidget {
  const GridLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 8,
      children: List.generate(Defaults.listItems.length, (index) {
        return MaterialButton(
          onPressed: () {},
          child: ListTile(
            trailing: Icon(
              Defaults.icons[index],
              color: Colors.white,
            ),
            leading: Text(
              Defaults.listItems[index],
              style: const TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ),
        );
      }),
    );
  }
}

class PotraitLayout extends StatelessWidget {
  const PotraitLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Defaults.listItems.length,
      itemBuilder: (context, index) {
        return MaterialButton(
          onPressed: () {},
          child: ListTile(
            trailing: Icon(
              Defaults.icons[index],
              color: Colors.white,
            ),
            leading: Text(
              Defaults.listItems[index],
              style: const TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}

class SectionTiles extends StatelessWidget {
  const SectionTiles({
    Key? key,
    required this.image,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String image;
  final String text;
  final bool icon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      onPressed: () {},
      child: ListTile(
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
          child: Image.asset(
            image,
            height: 25,
            width: 25,
            color: Defaults.bottomNavItemSelectedColor,
          ),
        ),
        title: Row(
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 17,
                color: Colors.white,
                //fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        trailing: icon
            ? const CircleAvatar(
                radius: 15,
                backgroundColor: Color.fromARGB(255, 61, 62, 63),
                child: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 15,
                  color: Defaults.bottomNavItemSelectedColor,
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}

class ToggleSwitch extends StatefulWidget {
  const ToggleSwitch({Key? key}) : super(key: key);

  @override
  State<ToggleSwitch> createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  bool value = true;
  Widget buildSwitch() => Transform.scale(
        scale: 1.2,
        child: Switch.adaptive(
          activeColor: Colors.deepOrange,
          activeTrackColor: Colors.white12,
          inactiveThumbColor: Colors.white38,
          inactiveTrackColor: Colors.white12,
          value: value,
          onChanged: (value) => setState(() => this.value = value),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return buildSwitch();
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 30, left: 15),
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 13, color: Colors.white70),
        ),
      ],
    );
  }
}

class Appearance extends StatelessWidget {
  const Appearance({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
        //color: Colors.white12,
      ),
      child: MaterialButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Defaults.bottomNavItemSelectedColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TileDivider extends StatelessWidget {
  const TileDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 17,
      thickness: 0.5,
      color: Colors.white70,
      indent: 17,
      endIndent: 17,
    );
  }
}

class PasswordField extends StatefulWidget {
  PasswordField({Key? key, 
    required this.obscureText,
    required this.inputHint,
    required this.keyboardType,
  }) : super(key: key);

  final String inputHint;
  final TextInputType keyboardType;
  bool obscureText;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 232, 233, 233),
      child: TextField(
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          labelText: widget.inputHint,
          border: const OutlineInputBorder(),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          // enabledBorder: const OutlineInputBorder(
          //   borderSide: BorderSide(color: Colors.black),
          // ),
          // focusedBorder: const OutlineInputBorder(
          //   borderSide: BorderSide(color: Colors.blue),
          // ),
          suffixIcon: IconButton(
            splashRadius: 20,
            onPressed: () {
              setState(() {
                widget.obscureText = !widget.obscureText;
              });
            },
            icon: Icon(
              widget.obscureText
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
            ),
          ),
          suffixIconColor: Colors.black,
        ),
      ),
    );
  }
}