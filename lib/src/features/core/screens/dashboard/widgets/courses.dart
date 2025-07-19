import 'package:flutter/material.dart';
import 'package:my_login_app/src/constants/text_strings.dart';

class Courses extends StatelessWidget {
  const Courses({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Text(
      tDashboardTopCourses,
      style: txtTheme.headlineSmall?.apply(fontSizeFactor: 1.2),
    );
  }
}