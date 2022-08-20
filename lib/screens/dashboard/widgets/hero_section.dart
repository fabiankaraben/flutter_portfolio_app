import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

///
class HeroSection extends StatelessWidget {
  ///
  const HeroSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              DefaultTextStyle(
                style: GoogleFonts.poppins(
                  color: Theme.of(context).textTheme.bodyText1!.color,
                  fontWeight: FontWeight.bold,
                  fontSize: 39,
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
                  fontSize: 17,
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
        Flexible(
          child: Center(
            child: Image.asset(
              'assets/images/home-developer.png',
            ),
          ),
        ),
      ],
    );
  }
}
