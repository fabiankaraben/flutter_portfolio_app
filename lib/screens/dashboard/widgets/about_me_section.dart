import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///
class AboutMeSection extends StatelessWidget {
  ///
  const AboutMeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About me',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
        const Divider(),
        const SizedBox(height: 20),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 500,
            minWidth: 500,
          ),
          child: Text(
            'Passionate di bidang Frontend Dev dan UI/UX Design. Suka membangun antarmuka website yang fast-performace dan well-design menggunakan teknologi-teknologi terbaru.',
            style: GoogleFonts.poppins(
              fontSize: 18,
              height: 1.9,
            ),
          ),
        ),
      ],
    );
  }
}
