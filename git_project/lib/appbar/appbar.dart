import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class WebsiteAppBar extends StatelessWidget {
  final Color appBarBackgroundColor;
  static List<Widget> actionsList(BuildContext context) {
    return [
      TextButton(
        style: ButtonStyle(
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          foregroundColor: WidgetStateProperty.resolveWith((
            Set<WidgetState> states,
          ) {
            if (states.contains(WidgetState.pressed)) {
              return Colors.black54;
            }
            if (states.contains(WidgetState.hovered)) {
              return Colors.black;
            }
            return Colors.black87;
          }),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
        child: const Text('Home', style: TextStyle(fontSize: 40)),
      ),
      TextButton(
        style: ButtonStyle(
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          foregroundColor: WidgetStateProperty.resolveWith((
            Set<WidgetState> states,
          ) {
            if (states.contains(WidgetState.pressed)) {
              return Colors.black54;
            }
            if (states.contains(WidgetState.hovered)) {
              return Colors.black;
            }
            return Colors.black87;
          }),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/git');
        },
        child: const Text('Courses', style: TextStyle(fontSize: 40)),
      ),
      TextButton(
        style: ButtonStyle(
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          foregroundColor: WidgetStateProperty.resolveWith((
            Set<WidgetState> states,
          ) {
            if (states.contains(WidgetState.pressed)) {
              return Colors.black54;
            }
            if (states.contains(WidgetState.hovered)) {
              return Colors.black;
            }
            return Colors.black87;
          }),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/blog');
        },
        child: const Text('Blog', style: TextStyle(fontSize: 30)),
      ),
      TextButton(
        style: ButtonStyle(
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          foregroundColor: WidgetStateProperty.resolveWith((
            Set<WidgetState> states,
          ) {
            if (states.contains(WidgetState.pressed)) {
              return Colors.black54;
            }
            if (states.contains(WidgetState.hovered)) {
              return Colors.black;
            }
            return Color.fromRGBO(45, 52, 54, 1);
          }),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/contact-us');
        },
        child: const Text('Contact us', style: TextStyle(fontSize: 20)),
      ),
    ];
  }

  const WebsiteAppBar({super.key, required this.appBarBackgroundColor});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      // floating: true,
      // snap: true,
      actionsPadding: EdgeInsets.only(right: 100),
      actions: [
        FittedBox(
          fit: BoxFit.cover,
          child: Row(
            spacing: 20,
            textBaseline: TextBaseline.ideographic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: actionsList(context),
          ),
        ),
      ],

      title: const AutoSizeText(
        'VohuCode',
        style: TextStyle(fontSize: 80, color: Colors.black),
        minFontSize: 40,
        maxLines: 1,
      ),
      elevation: 0,
      backgroundColor: appBarBackgroundColor,
      toolbarHeight: 130,
    );
  }
}

class MobileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MobileAppBar({super.key, required GlobalKey<ScaffoldState> scaffoldKey})
    : _key = scaffoldKey;

  final GlobalKey<ScaffoldState> _key;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onPressed: () {
          _key.currentState!.openDrawer();
        },
        icon: Icon(Icons.menu, size: 50),
      ),

      automaticallyImplyLeading: false,
      centerTitle: true,
      title: const AutoSizeText(
        'VohuCode',
        style: TextStyle(fontSize: 45, color: Colors.black),
        minFontSize: 20,
        maxLines: 3,
      ),
      elevation: 0,
      backgroundColor: Colors.amber[50],
      toolbarHeight: 100,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
}
