import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

///
class DecoratedBackground extends StatelessWidget {
  ///
  const DecoratedBackground({super.key, required this.child});

  ///
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        const Positioned(
          top: -400,
          left: -340,
          child: _GradientBlurredCircle(),
        ),
        const Positioned(
          bottom: -500,
          right: -440,
          child: _GradientBlurredCircle(),
        ),
        Container(
          margin: EdgeInsets.all(
            ResponsiveValue<double>(
              context,
              defaultValue: 16,
              valueWhen: const [
                Condition.largerThan(name: 'MOBILE_LARGE', value: 30),
                Condition.largerThan(name: TABLET, value: 50),
                // Condition.largerThan(name: DESKTOP, value: 50),
              ],
            ).value!,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: Theme.of(context).dividerColor.withOpacity(.02),
            border: Border.all(
              color: Theme.of(context).dividerColor.withOpacity(.08),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(22),
          ),
          child: Center(
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: 1100,
                minWidth: 1100,
              ),
              child: child,
            ),
          ),
        ),
      ],
    );
  }
}

/// Gradient blurred circle
class _GradientBlurredCircle extends StatelessWidget {
  /// Gradient blurred circle
  const _GradientBlurredCircle();

  @override
  Widget build(BuildContext context) {
    return Blur(
      blur: 80,
      blurColor: Theme.of(context).scaffoldBackgroundColor,
      borderRadius: BorderRadius.circular(1000),
      child: Container(
        width: 600,
        height: 600,
        margin: const EdgeInsets.all(170),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1000),
          gradient: const LinearGradient(
            colors: <Color>[
              Color(0x0000C2FF),
              Color(0xffFF29C3),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: <double>[0, .8],
          ),
        ),
      ),
    );
  }
}
