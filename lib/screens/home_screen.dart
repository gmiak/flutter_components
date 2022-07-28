import 'package:flutter/material.dart';
import 'package:flutter_components/components/bottom_nav_bar.dart';
import 'package:flutter_components/screens/likes_screen.dart';
import 'package:flutter_components/screens/signature_screen.dart';

import '../components/appbar.dart';
import '../utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        title: 'Qset Apps',
        iconButtons: iconButtons(context),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              // Space
              const SizedBox(height: 10),
              // Divider
              const Divider(color: collectionAvatarBorderColor, height: 3),
              // Space
              const SizedBox(height: 15),
              // signature
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerRight,
                child: const SignatureScreen(),
              ),
              // Space
              const SizedBox(height: 15),
              // Screen to show
              const LikesScreen(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  // Appbar
  List<IconButton> iconButtons(BuildContext context) {
    List<IconButton> buttons = <IconButton>[];
    // Add buttons 1
    buttons.add(IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.add,
          color: primaryColor,
        )));
    // Add buttons 2
    buttons.add(IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.search,
          color: primaryColor,
        )));
    return buttons;
  }
}
