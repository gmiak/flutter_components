import 'package:flutter/material.dart';
import 'package:flutter_components/components/swipe.dart';
import '../utils/colors.dart';

// Author @gmiak.dv

class SwipeScreen extends StatefulWidget {
  const SwipeScreen({Key? key}) : super(key: key);

  @override
  State<SwipeScreen> createState() => _SwipeScreenState();
}

class _SwipeScreenState extends State<SwipeScreen> {
  var _liked = 0;
  var _matched = 0;
  void _resultat() {
    setState(() {
      _liked++;
    });
  }

  void _resultatMatch() {
    setState(() {
      _matched++;
    });
  }

  List<String> pics = [
    "assets/shepherd.jpg",
    "assets/chiwawa.jpg",
    "assets/doberman.jpg",
    "assets/pitbull.jpg",
    "assets/retriever.jpg",
    "assets/shitzu.jpg",
    "assets/dan.jpg",
    "assets/amstaff.jpg",
    "assets/pugs.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _matched == 1
            ? showMatch()
            : SwipePics(pics: pics, liked: _resultat, matched: _resultatMatch),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var widget in getWidget())
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                  width: 55,
                  height: 55,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: iconCircleColor),
                  child: Center(child: widget),
                ),
              ),
          ],
        ),
        const SizedBox(height: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            getWidgetTwo(""),
            getWidgetTwo(_matched.toString()),
            getWidgetTwo(_liked.toString()),
          ],
        ),
      ],
    );
  }

  List<Widget> getWidget() {
    List<Widget> widget = <Widget>[];
    widget.add(
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.close),
        color: Colors.red,
        iconSize: 40,
      ),
    );
    widget.add(
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.star),
        color: Colors.blueAccent,
        iconSize: 40,
      ),
    );
    widget.add(
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.favorite),
        color: Colors.blueAccent,
        iconSize: 40,
      ),
    );
    return widget;
  }

  Widget getWidgetTwo(String data) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        width: 55,
        height: 55,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: appBackgroundColor),
        child: Center(
            child: Text(
          data,
          style: const TextStyle(
            color: primaryColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }

  Widget showMatch() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.black,
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 64),
            const Text(
              "It's a Match!",
              style: TextStyle(
                color: appBackgroundColor,
                fontSize: 43,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 34),
            const Text(
              "You and Pugs liked each other.",
              style: TextStyle(
                color: appBackgroundColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 34),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: appBackgroundColor,
                  radius: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60.0),
                    child: Image.asset('assets/profile.png'),
                  ),
                ),
                const SizedBox(width: 34),
                CircleAvatar(
                  backgroundColor: appBackgroundColor,
                  radius: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60.0),
                    child: Image.asset('assets/pugs.jpg'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 64),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(360),
                    ),
                  ),
                  color: Colors.pinkAccent),
              child: const Text(
                'SEND MESSAGE',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            const SizedBox(height: 24),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(360),
                    ),
                  ),
                  color: Colors.white),
              child: const Text(
                'KEEP SWIPING',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
