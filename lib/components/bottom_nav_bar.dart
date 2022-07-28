import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabBar(
      border: const Border(top: BorderSide(color: collectionAvatarBorderColor)),
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blueAccent,
              semanticLabel: 'Home',
              size: 35,
            ),
            backgroundColor: primaryColor),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              color: logoColor,
              semanticLabel: 'Add',
              size: 35,
            ),
            backgroundColor: primaryColor),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.mail_outlined,
              color: logoColor,
              semanticLabel: 'Message',
              size: 35,
            ),
            backgroundColor: primaryColor),
      ],
    );
  }
}
