import 'package:flutter/material.dart';

import '../utils/colors.dart';

class LampSystem extends StatefulWidget {
  final String room;
  const LampSystem({Key? key, required this.room}) : super(key: key);

  @override
  State<LampSystem> createState() => _LampSystemState();
}

class _LampSystemState extends State<LampSystem> {
  bool lightIsSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 8.0,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.arrow_drop_down_circle),
                  title: Text(
                    widget.room,
                    style: const TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                    ),
                  ),
                ),
                lightIsSwitched
                    ? Image.asset("assets/light_on.png", height: 260)
                    : Image.asset("assets/light_off.png", height: 260),
                const SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        SizedBox(
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Off",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 40,
                child: Switch(
                  value: lightIsSwitched,
                  onChanged: (value) {
                    setState(() {
                      lightIsSwitched = value;
                    });
                  },
                ),
              ),
              const Text(
                "On",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
