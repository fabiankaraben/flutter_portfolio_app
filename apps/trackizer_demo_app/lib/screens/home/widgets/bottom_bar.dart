import 'package:flutter/material.dart';
import 'package:trackizer_demo_app/app/themes/styles.dart';
import 'package:trackizer_demo_app/app/trackizer_icons.dart';

///
class HomeBottomBar extends StatelessWidget {
  ///
  const HomeBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 55,
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
          decoration: BoxDecoration(
            color: CustomColors.gray70,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  TrackizerIcons.home,
                  size: 18,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  TrackizerIcons.budgets,
                  size: 18,
                ),
              ),
              const SizedBox(width: 40),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  TrackizerIcons.calendar,
                  size: 18,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  TrackizerIcons.credit_cards,
                  size: 18,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -20,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xFFFF7966),
            child: const Icon(
              TrackizerIcons.plus,
              color: Colors.white,
              size: 32,
            ),
          ),
        ),
      ],
    );
  }
}
