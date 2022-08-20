import 'package:flutter/material.dart';
import '../widgets/defaults.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context)
        .orientation; // must be out of the MaterialApp class
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 36, 36),
      body: orientation == Orientation.portrait
          ? const PotraitLayout()
          : const GridLayout(),
    );
  }
}
