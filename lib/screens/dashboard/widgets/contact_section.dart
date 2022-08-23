import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/utils/url_launcher.dart';
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
        Row(
          children: [
            const _LinkButton(
              label: 'Send me a message',
              url: 'https://www.linkedin.com/in/fabiankaraben/',
            ),
            Expanded(child: Container()),
            const _LinkButton(
              label: 'GitHub',
              url: 'https://github.com/fabiankaraben',
            ),
            const SizedBox(width: 30),
            const _LinkButton(
              label: 'LinkedIn',
              url: 'https://www.linkedin.com/in/fabiankaraben/',
            ),
            const SizedBox(width: 30),
            const _LinkButton(
              label: 'Twitter',
              url: 'https://twitter.com/fab_k_dev',
            ),
          ],
        ),
      ],
    );
  }
}

class _LinkButton extends StatelessWidget {
  const _LinkButton({
    required this.label,
    required this.url,
  });

  final String label;
  final String url;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        await launchUrl(url);
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.button!.copyWith(
                  fontSize: 16,
                ),
          ),
          const SizedBox(width: 10),
          Icon(
            Icons.call_made,
            size: 14,
            color: Theme.of(context).textTheme.button!.color,
          ),
        ],
      ),
    );
  }
}
