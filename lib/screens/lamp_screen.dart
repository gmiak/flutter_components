import 'package:flutter/material.dart';
import 'package:flutter_components/components/lamp_system.dart';

// Author @gmiak.dv

class LampScreen extends StatefulWidget {
  const LampScreen({Key? key}) : super(key: key);

  @override
  State<LampScreen> createState() => _LampScreenState();
}

class _LampScreenState extends State<LampScreen> {
  List items = ["Bedroom", "Livingroom", "The office", "Lounge"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        children: [
          for (int i = 0; i < items.length; i++) LampSystem(room: items[i])
        ],
      ),
    );
  }
}
