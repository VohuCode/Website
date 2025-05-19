import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.amber[50],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.amber[300]),
            child: Center(
              child: AutoSizeText(
                'VohuCode',
                minFontSize: 10,
                maxLines: 3,
                style: TextStyle(fontSize: 50, color: Colors.black),
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 30,
            ),
            leading: Icon(Icons.home, color: Colors.black),
            title: AutoSizeText(
              'Home',
              minFontSize: 10,
              maxLines: 3,
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/git');
            },
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 30,
            ),
            leading: Icon(Icons.code, color: Colors.black),
            title: AutoSizeText(
              'Courses',
              minFontSize: 10,
              maxLines: 3,
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/blog');
            },
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 30,
            ),
            leading: Icon(Icons.file_copy, color: Colors.black),
            title: AutoSizeText(
              'Blog',
              minFontSize: 10,
              maxLines: 3,
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/contact-us');
            },
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 30,
            ),
            leading: Icon(Icons.contact_support_sharp, color: Colors.black),
            title: AutoSizeText(
              'Contact us',
              minFontSize: 10,
              maxLines: 3,
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
