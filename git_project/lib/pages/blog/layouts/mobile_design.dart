import 'package:animated_background/animated_background.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:git_project/appbar/appbar.dart';
import 'package:git_project/drawer/mobile_drawer.dart';

class MyMobileLayout extends StatefulWidget {
  const MyMobileLayout({super.key});

  @override
  State<MyMobileLayout> createState() => _MyMobileLayoutState();
}

class _MyMobileLayoutState extends State<MyMobileLayout>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: MobileAppBar(scaffoldKey: _key),
      drawer: MobileDrawer(),
      backgroundColor: Colors.white,
      body: AnimatedBackground(
        vsync: this,
        behaviour: RandomParticleBehaviour(
          options: ParticleOptions(
            baseColor: const Color.fromRGBO(255, 224, 130, 1),
            spawnMaxRadius: 20,
            spawnMaxSpeed: 80,
            spawnMinSpeed: 50,
            spawnOpacity: 0.2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            color: Colors.amber[50],
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
                    onTap: () => Navigator.pushNamed(context, '/blog/git'),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 10,
                        shadowColor: Colors.black,
                        color: Colors.white,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                                  color: Colors.black.withValues(alpha: 0.6),
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
    );
  }
}
