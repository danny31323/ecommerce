import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  static const fontSize = 25.0;

  final String value;

  AppHeader(this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: const TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class AppSubtitle extends StatelessWidget {
  static const fontSize = 18.0;

  final String value;

  const AppSubtitle(this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: const TextStyle(fontSize: fontSize),
    );
  }
}

class AppText extends StatelessWidget {
  static const fontSize = 14.0;

  final String value;

  const AppText(this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: const TextStyle(fontSize: fontSize),
    );
  }
}
