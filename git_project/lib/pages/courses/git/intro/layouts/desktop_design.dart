import 'package:auto_size_text/auto_size_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:git_project/appbar/appbar.dart';
import 'package:git_project/components.dart';
import 'package:git_project/pages/courses/git/intro/git_course_page.dart';

class MyDesktopLayout extends StatefulWidget {
  const MyDesktopLayout({super.key});

  @override
  State<MyDesktopLayout> createState() => _MyDesktopLayoutState();
}

class _MyDesktopLayoutState extends State<MyDesktopLayout> {
  Widget leadingIcon(int index) {
    if (index == 0) {
      return Icon(Icons.rocket_launch, color: Colors.black);
    } else if (index == 7) {
      return Icon(Icons.celebration, color: Colors.black);
    } else {
      return Icon(Icons.lightbulb, color: Colors.black);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          WebsiteAppBar(appBarBackgroundColor: Colors.transparent),
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        color: Colors.black,
                        radius: Radius.circular(20),
                        dashPattern: [8, 5, 8, 5],
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: AspectRatio(
                            aspectRatio: 1 / 2.3,
                            child: Container(
                              color: Colors.amber[50],
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                  right: 8,
                                  bottom: 8,
                                ),
                                child: ListView.separated(
                                  padding: const EdgeInsets.fromLTRB(
                                    8,
                                    8,
                                    20,
                                    8,
                                  ),
                                  itemBuilder: (
                                    BuildContext context,
                                    int index,
                                  ) {
                                    return Material(
                                      type: MaterialType.card,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color: Colors.black),
                                      ),
                                      elevation: 8,
                                      shadowColor: Colors.grey,
                                      child: ListTile(
                                        leading: leadingIcon(index),
                                        tileColor: Colors.amber[100],
                                        hoverColor: Colors.amber[200],
                                        splashColor: Colors.white,
                                        onTap: () {
                                          Navigator.pushNamed(
                                            context,
                                            GitCoursePage.lessons.values
                                                .elementAt(index)['route']!
                                                .first,
                                          );
                                        },
                                        subtitle:
                                            index != 7
                                                ? AutoSizeText(
                                                  GitCoursePage.lessons.values
                                                      .elementAt(
                                                        index,
                                                      )['subtitle']!
                                                      .first,
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                  minFontSize: 5,
                                                  maxLines: 1,
                                                )
                                                : null,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          // side: BorderSide(color: Colors.black),
                                        ),
                                        title: AutoSizeText(
                                          GitCoursePage.lessons.keys.elementAt(
                                            index,
                                          ),
                                          style: TextStyle(fontSize: 20),
                                          minFontSize: 5,
                                          maxLines: 1,
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (
                                    BuildContext context,
                                    int index,
                                  ) {
                                    if (index == 0 || index == 6) {
                                      return Divider(
                                        color: Colors.transparent,
                                        height: 25,
                                      );
                                    } else {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                          top: 5,
                                          bottom: 15,
                                          left: 20,
                                          // right: 5,
                                        ),
                                        child: Material(
                                          type: MaterialType.card,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.black,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          elevation: 8,
                                          shadowColor: Colors.grey,
                                          child: ListTile(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                context,
                                                '${GitCoursePage.lessons.values.elementAt(index)['route']!.first}-quiz',
                                              );
                                            },
                                            tileColor: Colors.grey[50],
                                            hoverColor: Colors.grey[200],
                                            splashColor: Colors.grey[400],
                                            leading: Icon(
                                              Icons.question_mark_rounded,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            title: AutoSizeText(
                                              'Quiz $index : ${GitCoursePage.lessons.keys.elementAt(index)}',
                                              style: TextStyle(fontSize: 20),
                                              minFontSize: 5,
                                              maxLines: 1,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                  },
                                  itemCount: GitCoursePage.lessons.length,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        color: Colors.black,
                        radius: Radius.circular(20),
                        dashPattern: [8, 5, 8, 5],
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: AspectRatio(
                            aspectRatio: 3 / 2.274,
                            child: Container(
                              color: Colors.amber[50],
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      10,
                                      10,
                                      20,
                                      10,
                                    ),
                                    child: Column(
                                      spacing: 20,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        AutoSizeText(
                                          'What is Git?',
                                          minFontSize: 20,
                                          maxLines: 1,
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            fontSize: 60,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        AutoSizeText(
                                          'Your Code’s Time Machine 🕰️',
                                          minFontSize: 8,
                                          maxLines: 1,
                                          style: TextStyle(
                                            color: Colors.black.withValues(
                                              alpha: 0.8,
                                            ),
                                            fontSize: 30,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        // SizedBox(height: 5),
                                        Card(
                                          elevation: 10,
                                          shadowColor: Colors.grey,
                                          color: Colors.white,
                                          child: Padding(
                                            padding: const EdgeInsets.all(15),
                                            child: AutoSizeText.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Git is a ',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        'version control system',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 28,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        ' that lets you track changes, undo mistakes, and collaborate seamlessly. Think of it as a "save button" for your code – but instead of one save file, you get an entire history of who changed what, when, and why.',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              minFontSize: 10,
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                        Components.contentDivider(),
                                        AutoSizeText(
                                          'Why Learn Git?',
                                          minFontSize: 20,
                                          maxLines: 1,
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            fontSize: 60,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 10,
                                          title: 'Never Lose Work: ',
                                          caption:
                                              'Accidentally deleted code? Git lets you rewind time.',
                                          icon: Icon(
                                            Icons.check_box_rounded,
                                            color: Colors.green,
                                            size: 35,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 10,
                                          title: 'Teamwork Made Easy: ',
                                          caption:
                                              'Collaborate without overwriting others’ work (no more final-final-v2 files!).',
                                          icon: Icon(
                                            Icons.check_box_rounded,
                                            color: Colors.green,
                                            size: 35,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 10,
                                          title: 'Industry Standard: ',
                                          caption:
                                              '90% of developers use Git – it’s a must-have skill for your resume.',
                                          icon: Icon(
                                            Icons.check_box_rounded,
                                            color: Colors.green,
                                            size: 35,
                                          ),
                                        ),
                                        Components.contentDivider(),
                                        AutoSizeText(
                                          'What You’ll Learn',
                                          minFontSize: 20,
                                          maxLines: 1,
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            fontSize: 60,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 10,
                                          title: 'Git Basics: ',
                                          caption:
                                              'Track changes, commit code, and branch like a pro.',
                                          icon: Icon(
                                            Icons.lightbulb_outline_rounded,
                                            color: Colors.black,
                                            size: 35,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 10,
                                          title: 'Git & GitHub: ',
                                          caption:
                                              'Share projects, collaborate, and protect your code.',
                                          icon: Icon(
                                            Icons.lightbulb_outline_rounded,
                                            color: Colors.black,
                                            size: 35,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 10,
                                          title: 'Git Contribute: ',
                                          caption:
                                              'Fork repos, submit fixes, and join open-source communities.',
                                          icon: Icon(
                                            Icons.lightbulb_outline_rounded,
                                            color: Colors.black,
                                            size: 35,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 10,
                                          title: 'Git Advanced: ',
                                          caption:
                                              'Master rebasing, hooks, and automation.',
                                          icon: Icon(
                                            Icons.lightbulb_outline_rounded,
                                            color: Colors.black,
                                            size: 35,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 10,
                                          title: 'Git Undo: ',
                                          caption:
                                              'Fix mistakes fearlessly with revert, reset, and reflog.',
                                          icon: Icon(
                                            Icons.lightbulb_outline_rounded,
                                            color: Colors.black,
                                            size: 35,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 10,
                                          title: 'Git Exercises: ',
                                          caption:
                                              'Practice real-world challenges to cement your skills.',
                                          icon: Icon(
                                            Icons.lightbulb_outline_rounded,
                                            color: Colors.black,
                                            size: 35,
                                          ),
                                        ),
                                        Components.contentDivider(),
                                        AutoSizeText(
                                          'Key Features You’ll Master',
                                          minFontSize: 20,
                                          maxLines: 1,
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            fontSize: 60,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        Card(
                                          elevation: 10,
                                          shadowColor: Colors.grey,
                                          color: Colors.white,
                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Row(
                                              spacing: 10,
                                              textBaseline:
                                                  TextBaseline.ideographic,
                                              children: <Widget>[
                                                Expanded(
                                                  flex: 2,
                                                  child: FittedBox(
                                                    child: Icon(
                                                      Icons.navigate_next_sharp,
                                                      color: Colors.black,
                                                      size: 35,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 20,
                                                  child: AutoSizeText.rich(
                                                    TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              'Version Control: ',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 25,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text:
                                                              'Save every change with:',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 25,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    minFontSize: 10,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Flexible(
                                                  fit: FlexFit.loose,
                                                  flex: 18,
                                                  child: Card(
                                                    margin: EdgeInsets.zero,
                                                    color: Colors.grey[400],
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                            10,
                                                          ),
                                                      child: SelectableText(
                                                        'git commit',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 10,
                                          title: 'Branching: ',
                                          caption:
                                              'Work on features without breaking your main code.',
                                          icon: Icon(
                                            Icons.navigate_next_sharp,
                                            color: Colors.black,
                                            size: 35,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 10,
                                          title: 'Collaboration: ',
                                          caption:
                                              'Use GitHub to team up on projects.',
                                          icon: Icon(
                                            Icons.navigate_next_sharp,
                                            color: Colors.black,
                                            size: 35,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 10,
                                          title: 'Undo Anything: ',
                                          caption: 'Revert errors in seconds.',
                                          icon: Icon(
                                            Icons.navigate_next_sharp,
                                            color: Colors.black,
                                            size: 35,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 10,
                                          title: 'Automation: ',
                                          caption:
                                              'Script tasks with Git hooks (e.g., auto-testing).',
                                          icon: Icon(
                                            Icons.navigate_next_sharp,
                                            color: Colors.black,
                                            size: 35,
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        Align(
                                          alignment:
                                              AlignmentDirectional.center,
                                          child: AutoSizeText(
                                            'Ready to Code Smarter?',
                                            minFontSize: 20,
                                            maxLines: 1,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 60,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional.center,
                                          child: Card(
                                            elevation: 10,
                                            shadowColor: Colors.grey,
                                            color: Colors.white,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 80,
                                                    vertical: 15,
                                                  ),
                                              child: AutoSizeText.rich(
                                                TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Tap ',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: 'Start Learning ',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 28,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          'below to write your first commit! 🚀',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                minFontSize: 10,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional.center,
                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  WidgetStateProperty.resolveWith(
                                                    (Set<WidgetState> states) {
                                                      if (states.contains(
                                                        WidgetState.pressed,
                                                      )) {
                                                        return Colors
                                                            .amber[300];
                                                      }
                                                      if (states.contains(
                                                        WidgetState.hovered,
                                                      )) {
                                                        return Colors
                                                            .amberAccent[400];
                                                      }
                                                      return Colors.amber;
                                                    },
                                                  ),
                                              elevation:
                                                  WidgetStateProperty.resolveWith(
                                                    (Set<WidgetState> states) {
                                                      if (states.contains(
                                                        WidgetState.pressed,
                                                      )) {
                                                        return 5;
                                                      }
                                                      if (states.contains(
                                                        WidgetState.hovered,
                                                      )) {
                                                        return 15;
                                                      }
                                                      return 10;
                                                    },
                                                  ),
                                              shadowColor:
                                                  WidgetStateProperty.all(
                                                    Colors.grey,
                                                  ),
                                              padding: WidgetStateProperty.all(
                                                EdgeInsets.all(20),
                                              ),
                                              foregroundColor:
                                                  WidgetStateProperty.all(
                                                    Colors.white,
                                                  ),
                                              textStyle:
                                                  WidgetStateProperty.resolveWith(
                                                    (Set<WidgetState> states) {
                                                      if (states.contains(
                                                        WidgetState.pressed,
                                                      )) {
                                                        return TextStyle(
                                                          fontSize: 30,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        );
                                                      }
                                                      if (states.contains(
                                                        WidgetState.hovered,
                                                      )) {
                                                        return TextStyle(
                                                          fontSize: 35,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        );
                                                      }
                                                      return TextStyle(
                                                        fontSize: 28,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      );
                                                    },
                                                  ),
                                            ),
                                            onPressed: () {
                                              Navigator.pushNamed(
                                                context,
                                                '/git/basics',
                                              );
                                            },
                                            child: AutoSizeText(
                                              'Start Learning',
                                              minFontSize: 5,
                                              maxLines: 1,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 50),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
