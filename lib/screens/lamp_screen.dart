import 'package:flutter/material.dart';
import 'package:flutter_components/utils/colors.dart';

class LampScreen extends StatefulWidget {
  const LampScreen({Key? key}) : super(key: key);

  @override
  State<LampScreen> createState() => _LampScreenState();
}

class _LampScreenState extends State<LampScreen> {
  bool lightIsSwitched = false;
  bool lightTwoIsSwitched = false;
  bool lightThreeIsSwitched = false;
  bool lightFourTwoIsSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 8.0,
                      child: Column(
                        children: [
                          const ListTile(
                            leading: Icon(Icons.arrow_drop_down_circle),
                            title: Text(
                              "Bedroom",
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          lightIsSwitched
                              ? Image.asset("assets/light_on.png", height: 300)
                              : Image.asset("assets/light_off.png",
                                  height: 300),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
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
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 8.0,
                      child: Column(
                        children: [
                          const ListTile(
                            leading: Icon(Icons.arrow_drop_down_circle),
                            title: Text(
                              "Livingroom",
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          lightTwoIsSwitched
                              ? Image.asset("assets/light_on.png", height: 300)
                              : Image.asset("assets/light_off.png",
                                  height: 300),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
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
                            value: lightTwoIsSwitched,
                            onChanged: (value) {
                              setState(() {
                                lightTwoIsSwitched = value;
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
              ),
            ],
          ),
          const SizedBox(height: 34),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 8.0,
                      child: Column(
                        children: [
                          const ListTile(
                            leading: Icon(Icons.arrow_drop_down_circle),
                            title: Text(
                              "The office",
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          lightThreeIsSwitched
                              ? Image.asset("assets/light_on.png", height: 300)
                              : Image.asset("assets/light_off.png",
                                  height: 300),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
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
                            value: lightThreeIsSwitched,
                            onChanged: (value) {
                              setState(() {
                                lightThreeIsSwitched = value;
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
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 8.0,
                      child: Column(
                        children: [
                          const ListTile(
                            leading: Icon(Icons.arrow_drop_down_circle),
                            title: Text(
                              "Lounge",
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          lightFourTwoIsSwitched
                              ? Image.asset("assets/light_on.png", height: 300)
                              : Image.asset("assets/light_off.png",
                                  height: 300),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
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
                            value: lightFourTwoIsSwitched,
                            onChanged: (value) {
                              setState(() {
                                lightFourTwoIsSwitched = value;
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
