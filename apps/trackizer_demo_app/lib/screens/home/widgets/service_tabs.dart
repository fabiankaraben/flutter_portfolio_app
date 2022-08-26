import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:trackizer_demo_app/app/themes/styles.dart';

///
class ServiceTabs extends StatelessWidget {
  ///
  const ServiceTabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _Tabs(),
        Expanded(
          child: _TabsContent(),
        ),
      ],
    );
  }
}

class _Tabs extends StatelessWidget {
  const _Tabs();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(18, 18, 18, 0),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      height: 50,
      decoration: BoxDecoration(
        color: CustomColors.gray100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Flexible(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white.withOpacity(.15),
                border: Border.all(color: CustomColors.gray50.withOpacity(.15)),
              ),
              child: Text(
                'Your subscriptions',
                style: TextStyles.headline1,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Flexible(
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(20, 17, 20, 18),
                primary: Colors.white,
                elevation: 0,
                textStyle: TextStyles.headline1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {
                BotToast.showText(
                  text: 'Feature not yet implemented',
                  textStyle: Theme.of(context).textTheme.bodyText1!,
                );
              },
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  'Upcoming bills',
                  style: TextStyles.headline1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TabsContent extends StatelessWidget {
  const _TabsContent();

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        const SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20, 18, 20, 20),
          child: _SubscriptionList(),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            height: 18,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).backgroundColor,
                  Theme.of(context).backgroundColor.withOpacity(0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            height: 18,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).backgroundColor.withOpacity(0),
                  Theme.of(context).backgroundColor,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SubscriptionList extends StatelessWidget {
  const _SubscriptionList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _SubscriptionItem(
          imageFilename: 'spotify-logo.png',
          title: 'Spotify',
          price: 5.99,
        ),
        SizedBox(height: 10),
        _SubscriptionItem(
          imageFilename: 'yt-premium-logo.png',
          title: 'YouTube Premium',
          price: 18.99,
        ),
        SizedBox(height: 10),
        _SubscriptionItem(
          imageFilename: 'onedrive-logo.png',
          title: 'Microsoft OneDrive',
          price: 29.99,
        ),
        SizedBox(height: 10),
        _SubscriptionItem(
          imageFilename: 'hbo-go-logo.png',
          title: 'HBO GO',
          price: 18.99,
        ),
        SizedBox(height: 10),
        _SubscriptionItem(
          imageFilename: 'netflix-logo.png',
          title: 'Netflix',
          price: 29.99,
        ),
      ],
    );
  }
}

class _SubscriptionItem extends StatelessWidget {
  const _SubscriptionItem({
    required this.imageFilename,
    required this.title,
    required this.price,
  });

  final String imageFilename;
  final String title;
  final double price;

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
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: CustomColors.gray70),
          color: CustomColors.gray70.withOpacity(.2),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/$imageFilename',
              width: 40,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                title,
                style: TextStyles.headline2,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              '\$$price',
              style: TextStyles.headline2,
            ),
          ],
        ),
      ),
    );
  }
}
