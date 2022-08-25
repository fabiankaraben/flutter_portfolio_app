import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:trackizer_demo_app/app/themes/styles.dart';
import 'package:trackizer_demo_app/app/trackizer_icons.dart';
import 'package:trackizer_demo_app/widgets/circle_chart.dart';

///
class HeroSection extends StatelessWidget {
  ///
  const HeroSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _HeroSectionContainer(
      child: Column(
        children: [
          const SizedBox(height: 53),
          _HeroCircleChart(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 33),
                Image.asset(
                  'assets/images/logo.png',
                  height: 19,
                ),
                const SizedBox(height: 20),
                Text(
                  r'$1,235',
                  style: TextStyles.headline7,
                ),
                const SizedBox(height: 13),
                Text(
                  'This month bills',
                  style: TextStyles.headline1.copyWith(
                    color: CustomColors.gray40,
                  ),
                ),
                const SizedBox(height: 27),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(14, 16, 14, 17),
                    primary: Colors.white.withOpacity(.15),
                    elevation: 1,
                    textStyle: TextStyles.headline1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('See you budget'),
                ),
              ],
            ),
          ),
          const _DataStats(),
        ],
      ),
    );
  }
}

class _HeroCircleChart extends StatelessWidget {
  const _HeroCircleChart({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    const width = 286.0;

    return Stack(
      alignment: Alignment.center,
      children: [
        const CircleChart(
          maxNumber: 100,
          progressNumber: 85,
          backgroundColor: Color(0xAA4E4E61),
          progressColor: Color(0xFFFF7966),
          width: width,
          height: width,
        ),
        child,
        // Container(
        //   width: width,
        //   height: width,
        //   decoration: BoxDecoration(
        //     border: Border.all(
        //       width: 10,
        //       color: Colors.blue.withOpacity(.2),
        //     ),
        //     shape: BoxShape.circle,
        //   ),
        // )
      ],
    );
  }
}

class _HeroSectionContainer extends StatelessWidget {
  const _HeroSectionContainer({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 429,
      decoration: BoxDecoration(
        // color: CustomColors.gray70,
        gradient: LinearGradient(
          colors: [const Color(0xFF292932), CustomColors.gray70],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned(
            top: 0,
            left: -8,
            child: _DashedCircles(),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                TrackizerIcons.settings,
                color: CustomColors.gray30,
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}

class _DashedCircles extends StatelessWidget {
  const _DashedCircles();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width + 16;
    return SizedBox(
      width: width,
      height: width,
      child: Stack(
        fit: StackFit.expand,
        children: [
          _DashedCircle(),
          Padding(
            padding: const EdgeInsets.all(30),
            child: _DashedCircle(),
          ),
          Padding(
            padding: const EdgeInsets.all(80),
            child: _DashedCircle(),
          ),
        ],
      ),
    );
  }
}

class _DashedCircle extends StatelessWidget {
  _DashedCircle();

  final gradient = LinearGradient(
    colors: [
      Colors.white.withOpacity(.1),
      Colors.white.withOpacity(.1),
      Colors.white.withOpacity(.05),
      Colors.white.withOpacity(0),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return gradient.createShader(Offset.zero & bounds.size);
      },
      child: Container(
        margin: const EdgeInsets.all(3),
        decoration: DottedDecoration(
          shape: Shape.circle,
          strokeWidth: 3,
          dash: const [3, 8],
        ),
      ),
    );
  }
}

class _DataStats extends StatelessWidget {
  const _DataStats();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _DataStatsItem(
          color: CustomColors.accentPrimary50,
          label: 'Active subs',
          value: '12',
        ),
        const SizedBox(width: 10),
        _DataStatsItem(
          color: CustomColors.primary10,
          label: 'Highest subs',
          value: r'$19.99',
        ),
        const SizedBox(width: 10),
        _DataStatsItem(
          color: CustomColors.accentSecondary50,
          label: 'Lowest subs',
          value: r'$5.99',
        ),
      ],
    );
  }
}

class _DataStatsItem extends StatelessWidget {
  const _DataStatsItem({
    required this.color,
    required this.label,
    required this.value,
  });

  final Color color;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 0,
          child: Container(
            width: 46,
            height: 1,
            color: color,
          ),
        ),
        Container(
          width: 104,
          height: 68,
          decoration: BoxDecoration(
            color: CustomColors.gray80.withOpacity(.2),
            border: Border.all(color: CustomColors.gray40.withOpacity(.2)),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: TextStyles.headline1.copyWith(
                  color: CustomColors.gray30,
                ),
              ),
              const SizedBox(height: 7),
              Text(
                value,
                style: TextStyles.headline2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
