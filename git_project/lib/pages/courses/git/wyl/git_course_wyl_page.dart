import 'package:flutter/material.dart';
import '../../../../responsive_layout.dart';
import 'layouts/desktop_design.dart';
import 'layouts/mobile_design.dart';

class GitCourseWYLPage extends StatelessWidget {
  const GitCourseWYLPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveDesign(
      mobileLayout: MyMobileLayout(),
      desktopLayout: MyDesktopLayout(),
    );
  }
}
