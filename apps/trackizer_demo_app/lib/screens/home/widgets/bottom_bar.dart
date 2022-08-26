import 'package:bot_toast/bot_toast.dart';
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
            children: const [
              SizedBox(width: 2),
              _BottomBarItem(icon: TrackizerIcons.home, active: true),
              _BottomBarItem(icon: TrackizerIcons.budgets),
              SizedBox(width: 50),
              _BottomBarItem(icon: TrackizerIcons.calendar),
              _BottomBarItem(icon: TrackizerIcons.credit_cards),
              SizedBox(width: 2),
            ],
          ),
        ),
        Positioned(
          top: -20,
          child: FloatingActionButton(
            onPressed: () {
              BotToast.showText(
                text: 'Feature not yet implemented',
                textStyle: Theme.of(context).textTheme.bodyText1!,
              );
            },
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

class _BottomBarItem extends StatelessWidget {
  const _BottomBarItem({
    required this.icon,
    this.active = false,
  });

  final IconData icon;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        BotToast.showText(
          text: 'Feature not yet implemented',
          textStyle: Theme.of(context).textTheme.bodyText1!,
        );
      },
      style: TextButton.styleFrom(
        primary: Colors.white,
        padding: const EdgeInsets.all(22),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17),
        ),
      ),
      child: Icon(
        icon,
        size: 18,
        color: active ? CustomColors.white : CustomColors.gray30,
      ),
    );
  }
}
