import 'package:auto_size_text/auto_size_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:git_project/appbar/appbar.dart';
import 'package:git_project/components.dart';
import 'package:git_project/drawer/mobile_drawer.dart';
import 'package:git_project/pages/courses/git/intro/git_course_page.dart';

class MyMobileLayout extends StatefulWidget {
  const MyMobileLayout({super.key});

  @override
  State<MyMobileLayout> createState() => _MyMobileLayoutState();
}

class _MyMobileLayoutState extends State<MyMobileLayout> {
  Widget leadingIcon(int index) {
    if (index == 0) {
      return Icon(Icons.rocket_launch, color: Colors.black);
    } else if (index == 7) {
      return Icon(Icons.celebration, color: Colors.black);
    } else {
      return Icon(Icons.lightbulb, color: Colors.black);
    }
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: MobileAppBar(scaffoldKey: _key),
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.amber[100],
          foregroundColor: Colors.black,
          hoverColor: Colors.amber[300],
          splashColor: Colors.white,
          child: Icon(Icons.list, size: 50),
          onPressed: () {
            showDialog(
              barrierDismissible: true,
              context: context,
              builder: (context) {
                return Align(
                  alignment: Alignment.centerRight,
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
                            padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
                            itemBuilder: (BuildContext context, int index) {
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
                                                .elementAt(index)['subtitle']!
                                                .first,
                                            style: TextStyle(fontSize: 14),
                                            minFontSize: 5,
                                            maxLines: 1 + 6 + 6,
                                          )
                                          : null,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  title: AutoSizeText(
                                    GitCoursePage.lessons.keys.elementAt(index),
                                    style: TextStyle(fontSize: 20),
                                    minFontSize: 5,
                                    maxLines: 1 + 6 + 6,
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
                                      side: BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(10),
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
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      title: AutoSizeText(
                                        'Quiz $index : ${GitCoursePage.lessons.keys.elementAt(index)}',
                                        style: TextStyle(fontSize: 20),
                                        minFontSize: 5,
                                        maxLines: 1 + 6 + 6,
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
                );
              },
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      drawer: MobileDrawer(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: DottedBorder(
          borderType: BorderType.RRect,
          color: Colors.black,
          radius: Radius.circular(20),
          dashPattern: [8, 5, 8, 5],
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Colors.amber[50],
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                    child: Column(
                      spacing: 20,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        AutoSizeText(
                          '🎉 Congratulations! 🎉',
                          minFontSize: 15,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        AutoSizeText(
                          'You’ve mastered the fundamentals of Git!\nHere’s everything you’ve accomplished in this course:',
                          minFontSize: 8,
                          maxLines: 2 + 6 + 6,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Components.optionsCard(
                          title: 'Git Essentials',
                          caption: '',
                          icon: Icon(Icons.start, color: Colors.amber),
                          captionMaxLines: 1 + 6 + 6,
                        ),
                        Components.optionsCard(
                          captionMaxLines: 2 + 6 + 6,
                          title: 'Version Control Basics:\n',
                          caption:
                              'Why Git is essential for tracking changes and collaborating.',
                          icon: Icon(Icons.check_box, color: Colors.green),
                        ),
                        Components.optionsCard(
                          captionMaxLines: 2 + 6 + 6,
                          title: 'Local Workflow: \n',
                          caption:
                              'git init, git add, git commit, and the staging area.',
                          icon: Icon(Icons.check_box, color: Colors.green),
                        ),
                        Components.optionsCard(
                          captionMaxLines: 2 + 6 + 6,
                          title: 'Branching & Merging: \n',
                          caption:
                              'Create, switch, and merge branches (git branch, git merge).',
                          icon: Icon(Icons.check_box, color: Colors.green),
                        ),
                        Components.optionsCard(
                          captionMaxLines: 2 + 6 + 6,
                          title: 'Undoing Mistakes: \n',
                          caption:
                              'Amend commits, reset history, and recover lost work (git restore, git reflog).',
                          icon: Icon(Icons.check_box, color: Colors.green),
                        ),
                        Components.optionsCard(
                          captionMaxLines: 2 + 6 + 6,
                          title: 'Stashing Changes: \n',
                          caption: 'Save work-in-progress with git stash.',
                          icon: Icon(Icons.check_box, color: Colors.green),
                        ),
                        Components.optionsCard(
                          captionMaxLines: 2 + 6 + 6,
                          title: 'Branching & Merging: \n',
                          caption:
                              'Create, switch, and merge branches (git branch, git merge).',
                          icon: Icon(Icons.check_box, color: Colors.green),
                        ),
                        Components.contentDivider(),
                        Components.optionsCard(
                          captionMaxLines: 1 + 6 + 6,
                          title: 'Collaboration & Remote Work',
                          caption: '',
                          icon: Icon(Icons.language, color: Colors.lightBlue),
                        ),
                        Components.optionsCard(
                          captionMaxLines: 2 + 6 + 6,
                          title: 'GitHub Basics:\n',
                          caption:
                              'Clone, fork, and sync repos with git clone, git push, and git pull.',
                          icon: Icon(Icons.check_box, color: Colors.green),
                        ),
                        Components.optionsCard(
                          captionMaxLines: 2 + 6 + 6,
                          title: 'Pull Requests: \n',
                          caption:
                              'Contribute to projects via forks, branches, and PRs.',
                          icon: Icon(Icons.check_box, color: Colors.green),
                        ),
                        Components.optionsCard(
                          captionMaxLines: 2 + 6 + 6,
                          title: 'Conflict Resolution: \n',
                          caption: 'Resolve merge conflicts like a pro.',
                          icon: Icon(Icons.check_box, color: Colors.green),
                        ),
                        Components.contentDivider(),

                        Components.optionsCard(
                          captionMaxLines: 1 + 6 + 6,
                          title: 'Advanced Skills',
                          caption: '',
                          icon: Icon(
                            Icons.rocket_launch,
                            color: Colors.deepOrangeAccent[400],
                            size: 35,
                          ),
                        ),
                        Components.optionsCard(
                          captionMaxLines: 2 + 6 + 6,
                          title: 'Rebasing: \n',
                          caption: 'Clean up history with git rebase.',
                          icon: Icon(Icons.check_box, color: Colors.green),
                        ),
                        Components.optionsCard(
                          captionMaxLines: 2 + 6 + 6,
                          title: 'Tagging: \n',
                          caption: 'Mark releases with git tag.',
                          icon: Icon(Icons.check_box, color: Colors.green),
                        ),
                        Components.optionsCard(
                          captionMaxLines: 2 + 6 + 6,
                          title: 'Hooks: \n',
                          caption:
                              'Automate workflows with pre-commit/push scripts.',
                          icon: Icon(Icons.check_box, color: Colors.green),
                        ),
                        Components.optionsCard(
                          captionMaxLines: 2 + 6 + 6,
                          title: 'Git Internals: \n',
                          caption:
                              'Blobs, trees, and commits (how Git works under the hood).',
                          icon: Icon(Icons.check_box, color: Colors.green),
                        ),
                        Components.contentDivider(),
                        Components.optionsCard(
                          captionMaxLines: 1 + 6 + 6,
                          title: 'Best Practices',
                          caption: '',
                          icon: Icon(
                            Icons.lightbulb,
                            color: Colors.amber,
                            size: 35,
                          ),
                        ),
                        Components.optionsCard(
                          captionMaxLines: 1 + 6 + 6,
                          title: 'Atomic commits and meaningful messages.',
                          caption: '',
                          icon: Icon(Icons.check_box, color: Colors.green),
                        ),
                        Components.optionsCard(
                          captionMaxLines: 1 + 6 + 6,
                          title:
                              'Using .gitignore to exclude unnecessary files',
                          caption: '',
                          icon: Icon(Icons.check_box, color: Colors.green),
                        ),
                        Components.optionsCard(
                          captionMaxLines: 1 + 6 + 6,
                          title:
                              'Safe force-pushing and collaborative etiquette.',
                          caption: '',
                          icon: Icon(Icons.check_box, color: Colors.green),
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
                          captionMaxLines: 4 + 6 + 6,
                        ),
                        Align(
                          alignment: AlignmentDirectional.center,
                          child: AutoSizeText(
                            'Keep coding, keep committing, and keep learning!',
                            minFontSize: 8,
                            maxLines: 2 + 6 + 6,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.center,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.resolveWith((
                                Set<WidgetState> states,
                              ) {
                                if (states.contains(WidgetState.pressed)) {
                                  return Colors.amber[300];
                                }
                                if (states.contains(WidgetState.hovered)) {
                                  return Colors.amberAccent[400];
                                }
                                return Colors.amber;
                              }),
                              elevation: WidgetStateProperty.resolveWith((
                                Set<WidgetState> states,
                              ) {
                                if (states.contains(WidgetState.pressed)) {
                                  return 5;
                                }
                                if (states.contains(WidgetState.hovered)) {
                                  return 15;
                                }
                                return 10;
                              }),
                              shadowColor: WidgetStateProperty.all(Colors.grey),
                              padding: WidgetStateProperty.all(
                                EdgeInsets.all(20),
                              ),
                              foregroundColor: WidgetStateProperty.all(
                                Colors.white,
                              ),
                              textStyle: WidgetStateProperty.resolveWith((
                                Set<WidgetState> states,
                              ) {
                                if (states.contains(WidgetState.pressed)) {
                                  return TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  );
                                }
                                if (states.contains(WidgetState.hovered)) {
                                  return TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  );
                                }
                                return TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                );
                              }),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/git');
                            },
                            child: AutoSizeText(
                              'Explore More Courses',
                              textAlign: TextAlign.center,
                              minFontSize: 5,
                              maxLines: 1 + 6 + 6,
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
    );
  }
}
