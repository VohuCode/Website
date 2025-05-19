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
                                          '🎉 Congratulations! 🎉',
                                          minFontSize: 20,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 60,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        AutoSizeText(
                                          'You’ve mastered the fundamentals of Git!\nHere’s everything you’ve accomplished in this course:',
                                          minFontSize: 8,
                                          maxLines: 2,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          title: 'Git Essentials',
                                          caption: '',
                                          icon: Icon(
                                            Icons.start,
                                            color: Colors.amber,
                                          ),
                                          captionMaxLines: 1,
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 2,
                                          title: 'Version Control Basics:\n',
                                          caption:
                                              'Why Git is essential for tracking changes and collaborating.',
                                          icon: Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 2,
                                          title: 'Local Workflow: \n',
                                          caption:
                                              'git init, git add, git commit, and the staging area.',
                                          icon: Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 2,
                                          title: 'Branching & Merging: \n',
                                          caption:
                                              'Create, switch, and merge branches (git branch, git merge).',
                                          icon: Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 2,
                                          title: 'Undoing Mistakes: \n',
                                          caption:
                                              'Amend commits, reset history, and recover lost work (git restore, git reflog).',
                                          icon: Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 2,
                                          title: 'Stashing Changes: \n',
                                          caption:
                                              'Save work-in-progress with git stash.',
                                          icon: Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 2,
                                          title: 'Branching & Merging: \n',
                                          caption:
                                              'Create, switch, and merge branches (git branch, git merge).',
                                          icon: Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Components.contentDivider(),
                                        Components.optionsCard(
                                          captionMaxLines: 1,
                                          title: 'Collaboration & Remote Work',
                                          caption: '',
                                          icon: Icon(
                                            Icons.language,
                                            color: Colors.lightBlue,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 2,
                                          title: 'GitHub Basics:\n',
                                          caption:
                                              'Clone, fork, and sync repos with git clone, git push, and git pull.',
                                          icon: Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 2,
                                          title: 'Pull Requests: \n',
                                          caption:
                                              'Contribute to projects via forks, branches, and PRs.',
                                          icon: Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 2,
                                          title: 'Conflict Resolution: \n',
                                          caption:
                                              'Resolve merge conflicts like a pro.',
                                          icon: Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Components.contentDivider(),

                                        Components.optionsCard(
                                          captionMaxLines: 1,
                                          title: 'Advanced Skills',
                                          caption: '',
                                          icon: Icon(
                                            Icons.rocket_launch,
                                            color: Colors.deepOrangeAccent[400],
                                            size: 35,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 2,
                                          title: 'Rebasing: \n',
                                          caption:
                                              'Clean up history with git rebase.',
                                          icon: Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 2,
                                          title: 'Tagging: \n',
                                          caption:
                                              'Mark releases with git tag.',
                                          icon: Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 2,
                                          title: 'Hooks: \n',
                                          caption:
                                              'Automate workflows with pre-commit/push scripts.',
                                          icon: Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 2,
                                          title: 'Git Internals: \n',
                                          caption:
                                              'Blobs, trees, and commits (how Git works under the hood).',
                                          icon: Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Components.contentDivider(),
                                        Components.optionsCard(
                                          captionMaxLines: 1,
                                          title: 'Best Practices',
                                          caption: '',
                                          icon: Icon(
                                            Icons.lightbulb,
                                            color: Colors.amber,
                                            size: 35,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 1,
                                          title:
                                              'Atomic commits and meaningful messages.',
                                          caption: '',
                                          icon: Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 1,
                                          title:
                                              'Using .gitignore to exclude unnecessary files',
                                          caption: '',
                                          icon: Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Components.optionsCard(
                                          captionMaxLines: 1,
                                          title:
                                              'Safe force-pushing and collaborative etiquette.',
                                          caption: '',
                                          icon: Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Components.contentDivider(),
                                        Components.optionsCard(
                                          title: 'What’s Next?\n',
                                          caption:
                                              'Build Your Portfolio: Add Git projects to your GitHub profile.\nJoin Open Source: Contribute to projects you love.\nDeepen Your Skills: Explore CI/CD, Git workflows (Gitflow), and advanced tooling.',
                                          icon: Icon(
                                            Icons.local_fire_department_rounded,
                                            color: Colors.deepOrange,
                                          ),
                                          captionMaxLines: 4,
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional.center,
                                          child: AutoSizeText(
                                            'Keep coding, keep committing, and keep learning!',
                                            minFontSize: 8,
                                            maxLines: 2,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.w700,
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
                                                '/git',
                                              );
                                            },
                                            child: AutoSizeText(
                                              'Explore More Courses',
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
