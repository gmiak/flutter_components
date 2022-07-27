import 'package:flutter/material.dart';
import '../utils/colors.dart';

// Author @gmiak.dv

class LikesScreen extends StatefulWidget {
  const LikesScreen({Key? key}) : super(key: key);

  @override
  State<LikesScreen> createState() => _LikesScreenState();
}

class _LikesScreenState extends State<LikesScreen> {
  // ignore: prefer_final_fields
  int _likes = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: appBackgroundColor,
            border: Border.symmetric(
              horizontal:
                  BorderSide(color: collectionAvatarBorderColor, width: 0.4),
            ),
          ),
          child: Image.asset('assets/profile.png'),
        ),
        // Space
        const SizedBox(height: 10.0),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Heart
              InkWell(
                onTap: () {
                  setState(() {
                    _likes++;
                  });
                },
                splashColor: Colors.red,
                child: Icon(
                  _likes >= 1 ? Icons.favorite : Icons.favorite_border_outlined,
                  color: _likes >= 1 ? Colors.red : primaryColor,
                  size: 23,
                ),
              ),
              // Space
              const SizedBox(width: 12),
              // likes
              Text(
                _likes.toString(),
                style: const TextStyle(color: primaryColor),
              ),
              Text(
                _likes >= 2 ? " likes" : " like",
                style: const TextStyle(color: primaryColor),
              )
            ],
          ),
        ),
      ],
    );
  }
}
