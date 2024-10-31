import 'package:flutter/material.dart';
import 'package:video_task/app/core/theme/app_text_theme_extension.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Start',
          style: Theme.of(context).xTextTheme.display1,
        ),
      ),
    );
  }
}
