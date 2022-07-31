// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_components/utils/colors.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

// Author @gmiak.dv

class SwipePics extends StatelessWidget {
  final List<String> pics;
  final Function() liked;
  final Function() matched;
  //constructor
  const SwipePics(
      {Key? key,
      required this.pics,
      required this.liked,
      required this.matched})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    CardController controller; //Use this to trigger swap.
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.6,
        child: TinderSwapCard(
          swipeUp: false,
          swipeDown: false,
          orientation: AmassOrientation.BOTTOM,
          totalNum: pics.length,
          stackNum: 3,
          swipeEdge: 4.0,
          maxWidth: MediaQuery.of(context).size.width * 0.9,
          maxHeight: MediaQuery.of(context).size.width * 0.9,
          minWidth: MediaQuery.of(context).size.width * 0.8,
          minHeight: MediaQuery.of(context).size.width * 0.8,
          //Making Movie's poster clickable
          cardBuilder: (context, index) => Card(
            color: appBackgroundColor,
            child: Image.asset(pics[index]),
          ),
          cardController: controller = CardController(),
          swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
            /// Get swiping card's alignment
            if (align.x < 0) {
              //Card is LEFT swiping
            } else if (align.x > 0) {
              //Card is RIGHT swiping
            }
            //print(align.x);
          },
          swipeCompleteCallback: (CardSwipeOrientation orientation, int index) {
            /// Get orientation & index of swiped card!
            if (orientation == CardSwipeOrientation.RIGHT) {
              liked();
            }
            if (index == 8 && orientation == CardSwipeOrientation.RIGHT) {
              matched();
            }
          },
        ),
      ),
    );
  }
}
