import 'package:flutter/material.dart';

import '../utils/colors.dart';

class SignatureScreen extends StatelessWidget {
  const SignatureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: appBackgroundColor,
          radius: 30,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image.asset('assets/profile.png'),
          ),
        ),
        const SizedBox(width: 15),
        const Text(
          "Gmiak.dv",
          style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 5),
        const Icon(Icons.verified_user, color: blueColor, size: 12)
      ],
    );
  }
}
