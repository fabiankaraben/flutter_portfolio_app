import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///
class ContactSection extends StatelessWidget {
  ///
  const ContactSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contact',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
        const Divider(),
        const SizedBox(height: 20),
        Text(
          'Passionate di bidang Frontend Dev dan UI/UX Design. Suka membangun antarmuka website yang fast-performace dan well-design menggunakan teknologi-teknologi terbaru.',
          style: GoogleFonts.poppins(
            fontSize: 18,
            height: 1.9,
          ),
        ),
      ],
    );
  }
}
