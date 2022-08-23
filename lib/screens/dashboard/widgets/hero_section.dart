import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

///
class HeroSection extends StatelessWidget {
  ///
  const HeroSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      layout: ResponsiveValue<ResponsiveRowColumnType>(
        context,
        defaultValue: ResponsiveRowColumnType.COLUMN,
        valueWhen: const [
          Condition.largerThan(
            name: MOBILE,
            value: ResponsiveRowColumnType.ROW,
          ),
        ],
      ).value!,
      rowCrossAxisAlignment: CrossAxisAlignment.end,
      columnMainAxisSize: MainAxisSize.min,
      children: [
        ResponsiveRowColumnItem(
          rowFlex: 1,
          columnFlex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 50),
              DefaultTextStyle(
                style: GoogleFonts.poppins(
                  color: Theme.of(context).textTheme.bodyText1!.color,
                  fontWeight: FontWeight.bold,
                  fontSize: ResponsiveValue<double>(
                    context,
                    defaultValue: 24,
                    valueWhen: const [
                      Condition.largerThan(name: 'MOBILE_LARGE', value: 30),
                      Condition.largerThan(name: TABLET, value: 34),
                      Condition.largerThan(name: DESKTOP, value: 39),
                    ],
                  ).value,
                ),
                child: Wrap(
                  children: [
                    const Text(
                      'Hello! ',
                    ),
                    const SizedBox(width: double.infinity),
                    const Text(
                      'I am ',
                    ),
                    GradientText(
                      'Fabián Karaben',
                      colors: const [
                        Color(0xFFF59E0B),
                        Color(0xFFEF4444),
                      ],
                    ),
                    const Text(
                      '. ',
                    ),
                    const SizedBox(width: double.infinity),
                    GradientText(
                      'Flutter ',
                      colors: const [
                        Color(0xFF8B5CF6),
                        Color(0xFFEC4899),
                      ],
                    ),
                    const Text(
                      'developer.',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Text(
                'Passionate di bidang Frontend Dev dan UI/UX Design. '
                'Suka membangun antarmuka website yang fast-performace dan '
                'well-design menggunakan teknologi-teknologi terbaru.',
                style: GoogleFonts.poppins(
                  fontSize: ResponsiveValue<double>(
                    context,
                    defaultValue: 16,
                    valueWhen: const [
                      Condition.largerThan(name: TABLET, value: 17),
                    ],
                  ).value,
                  height: 1.9,
                ),
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 30,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text('Lihat Portfolio'),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_right_alt),
                  ],
                ),
              )
            ],
          ),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 1,
          columnFlex: 1,
          child: ResponsiveVisibility(
            visible: false,
            visibleWhen: const [Condition.largerThan(name: MOBILE)],
            child: Center(
              child: Image.asset(
                'assets/images/home-developer.png',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
