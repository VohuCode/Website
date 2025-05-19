import 'package:flutter/material.dart';
import '../../../../responsive_layout.dart';
import 'layouts/desktop_design.dart';
import 'layouts/mobile_design.dart';

class GitCourseGitAndGithubQuizPage extends StatelessWidget {
  const GitCourseGitAndGithubQuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveDesign(
      mobileLayout: MyMobileLayout(),
      desktopLayout: MyDesktopLayout(),
    );
  }
}
