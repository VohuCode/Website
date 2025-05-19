import 'package:flutter/material.dart';

class ResponsiveDesign extends StatelessWidget {
  final Widget mobileLayout;
  final Widget desktopLayout;
  const ResponsiveDesign({
    super.key,
    required this.mobileLayout,
    required this.desktopLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 850) {
          return mobileLayout;
        } else {
          return desktopLayout;
        }
      },
    );
  }
}
