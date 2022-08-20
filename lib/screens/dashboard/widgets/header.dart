import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///
class Header extends StatelessWidget {
  ///
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'FK',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        const _ToggleThemeIconButton(),
      ],
    );
  }
}

class _ToggleThemeIconButton extends StatefulWidget {
  const _ToggleThemeIconButton();

  @override
  State<_ToggleThemeIconButton> createState() => _ToggleThemeIconButtonState();
}

class _ToggleThemeIconButtonState extends State<_ToggleThemeIconButton> {
  AdaptiveThemeMode mode = AdaptiveThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<AdaptiveThemeMode>(
      future: Future.microtask(
        () async =>
            await AdaptiveTheme.getThemeMode() ?? AdaptiveThemeMode.light,
      ),
      initialData: AdaptiveThemeMode.light,
      builder: (context, snapshot) {
        mode = snapshot.data!;
        return IconButton(
          icon: Icon(
            mode == AdaptiveThemeMode.light
                ? Icons.dark_mode
                : Icons.light_mode,
          ),
          onPressed: () async {
            if (await AdaptiveTheme.getThemeMode() == AdaptiveThemeMode.light) {
              AdaptiveTheme.of(context).setDark();
              setState(() => mode = AdaptiveThemeMode.dark);
            } else {
              AdaptiveTheme.of(context).setLight();
              setState(() => mode = AdaptiveThemeMode.light);
            }
          },
        );
      },
    );
  }
}
