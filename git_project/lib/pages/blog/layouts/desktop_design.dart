import 'package:auto_size_text/auto_size_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:git_project/appbar/appbar.dart';

class MyDesktopLayout extends StatefulWidget {
  const MyDesktopLayout({super.key});

  @override
  State<MyDesktopLayout> createState() => _MyDesktopLayoutState();
}

class _MyDesktopLayoutState extends State<MyDesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          WebsiteAppBar(appBarBackgroundColor: Colors.transparent),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
            sliver: SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                DottedBorder(
                  borderType: BorderType.RRect,
                  color: Colors.black,
                  radius: Radius.circular(20),
                  dashPattern: [8, 5, 8, 5],
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: Colors.amber[50],
                      child: AspectRatio(
                        aspectRatio: 9 / 16,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: SingleChildScrollView(
                            child: Column(
                              spacing: 20,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  'Knowledge Hub',
                                  maxLines: 1,
                                  minFontSize: 30,
                                  style: TextStyle(
                                    fontSize: 60,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                AutoSizeText(
                                  'Dive Into Stories, Tutorials, and Ideas That Matter',
                                  minFontSize: 20,
                                  maxLines: 3,
                                  style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.black.withValues(alpha: 0.7),
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                GestureDetector(
                                  onTap:
                                      () => Navigator.pushNamed(
                                        context,
                                        '/blog/git',
                                      ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(70),
                                    child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 10,
                                      shadowColor: Colors.black,
                                      color: Colors.white,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          AspectRatio(
                                            aspectRatio: 16 / 9,
                                            child: Image.asset(
                                              'assets/images/what_is_git_blog_post.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          ListTile(
                                            leading: Icon(
                                              Icons.lightbulb,
                                              color: Colors.amber,
                                              size: 50,
                                            ),
                                            title: AutoSizeText(
                                              'Git 101',
                                              minFontSize: 15,
                                              maxLines: 1,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 30,
                                              ),
                                            ),
                                            subtitle: AutoSizeText(
                                              'The Ultimate Starter Guide for Future Developers',
                                              minFontSize: 15,
                                              maxLines: 1,
                                              style: TextStyle(
                                                color: Colors.black.withValues(
                                                  alpha: 0.6,
                                                ),
                                                fontSize: 22,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
