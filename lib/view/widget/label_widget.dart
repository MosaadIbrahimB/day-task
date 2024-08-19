import 'package:flutter/material.dart';

import '../../utils/app_text.dart';

class WelcomeWidget extends StatelessWidget {
  final String title;
  const WelcomeWidget({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
     title,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}

class LabelWidget extends StatelessWidget {
  final String title;
  final TextStyle? style;
  const LabelWidget({super.key, required this.title, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 2,
      title,
        style: style,
    );
  }
}
