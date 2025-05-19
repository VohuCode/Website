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
  int checkboxVal = 0;

  int _currentStep = 0;
  final PageController _pageController = PageController();

  Widget leadingIcon(int index) {
    if (index == 0) {
      return Icon(Icons.rocket_launch, color: Colors.black);
    } else if (index == 7) {
      return Icon(Icons.celebration, color: Colors.black);
    } else {
      return Icon(Icons.lightbulb, color: Colors.black);
    }
  }

  void _nextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _previousPage() {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  Widget navigationButtons() {
    if (_currentStep == 0) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            ElevatedButton(
              onPressed:
                  () => verifyAnswer(
                    nextPage: _nextPage,
                    correctAnswer: 3,
                    correctedAnswer: Components.optionsCard(
                      title: 'Explanation:\n',
                      caption:
                          'Option 3: gh repo sync automates syncing your fork with the upstream repo (modern GitHub CLI method).\nOption 2 Trap: Pushes to upstream (original repo), which you likely don’t have permission for.\nOption 1 Fails: upstream isn’t defined yet.\nOption 4 Fails: Cloning your fork doesn’t sync upstream changes.',
                      icon: Icon(Icons.check_box, color: Colors.green),
                      captionMaxLines: 6,
                    ),
                  ),
              style: ButtonStyle(
                overlayColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.white;
                  }
                  return null;
                }),
                padding: WidgetStateProperty.all(
                  EdgeInsets.symmetric(vertical: 18, horizontal: 35),
                ),
                foregroundColor: WidgetStateProperty.all(Colors.white),

                backgroundColor: WidgetStateProperty.resolveWith((
                  Set<WidgetState> states,
                ) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.amber[200];
                  }
                  if (states.contains(WidgetState.hovered)) {
                    return Colors.amber[400];
                  }
                  return Colors.amber[300];
                }),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
              ),
              child: AutoSizeText(
                'Next',
                minFontSize: 5,
                maxLines: 1,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      );
    } else if (_currentStep == 2) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(20, 80, 20, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ElevatedButton(
              onPressed: _previousPage,
              style: ButtonStyle(
                overlayColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.white;
                  }
                  return null;
                }),
                padding: WidgetStateProperty.all(
                  EdgeInsets.symmetric(vertical: 18, horizontal: 35),
                ),
                foregroundColor: WidgetStateProperty.all(Colors.white),
                backgroundColor: WidgetStateProperty.resolveWith((
                  Set<WidgetState> states,
                ) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.amber[100];
                  }
                  if (states.contains(WidgetState.hovered)) {
                    return Colors.amber[300];
                  }
                  return Colors.amber[200];
                }),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
              ),
              child: AutoSizeText(
                'Previous',
                minFontSize: 5,
                maxLines: 1,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                verifyAnswer(
                  nextPage:
                      // TODO: change route
                      () => Navigator.pushNamed(
                        context,
                        GitCoursePage.lessons.values
                            .elementAt(4)['route']!
                            .first,
                      ),
                  correctAnswer: 1,
                  correctedAnswer: Components.optionsCard(
                    title: 'Explanation:\n',
                    caption:
                        'Option 1: Adds a new commit to the existing branch (preserves history, safe for collaboration).\nOption 2 Trap: Resets and force-pushes, which rewrites history (risky for open PRs).\nOption 3 Fails: Merges into main instead of updating the PR branch.\nOption 4 Fails: Creates a new branch/PR unnecessarily.',
                    icon: Icon(Icons.check_box, color: Colors.green),
                    captionMaxLines: 6,
                  ),
                );
              },
              style: ButtonStyle(
                overlayColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.white;
                  }
                  return null;
                }),
                padding: WidgetStateProperty.all(
                  EdgeInsets.symmetric(vertical: 18, horizontal: 35),
                ),
                foregroundColor: WidgetStateProperty.all(Colors.white),

                backgroundColor: WidgetStateProperty.resolveWith((
                  Set<WidgetState> states,
                ) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.amber[200];
                  }
                  if (states.contains(WidgetState.hovered)) {
                    return Colors.amber[400];
                  }
                  return Colors.amber[300];
                }),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
              ),
              child: AutoSizeText(
                // TODO: change elementAt number
                GitCoursePage.lessons.keys.elementAt(4),
                minFontSize: 5,
                maxLines: 1,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.fromLTRB(20, 80, 20, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ElevatedButton(
              onPressed: _previousPage,
              style: ButtonStyle(
                overlayColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.white;
                  }
                  return null;
                }),
                padding: WidgetStateProperty.all(
                  EdgeInsets.symmetric(vertical: 18, horizontal: 35),
                ),
                foregroundColor: WidgetStateProperty.all(Colors.white),
                backgroundColor: WidgetStateProperty.resolveWith((
                  Set<WidgetState> states,
                ) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.amber[100];
                  }
                  if (states.contains(WidgetState.hovered)) {
                    return Colors.amber[300];
                  }
                  return Colors.amber[200];
                }),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
              ),
              child: AutoSizeText(
                'Previous',
                minFontSize: 5,
                maxLines: 1,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed:
                  () => verifyAnswer(
                    nextPage: _nextPage,
                    correctAnswer: 1,
                    correctedAnswer: Components.optionsCard(
                      title: 'Explanation:\n',
                      caption:
                          'Push to your fork, then create a PR comparing forks via gh pr create.\nTraps: Option 2 uses upstream (no push access). Option 3 merges to main (unsafe).',
                      icon: Icon(Icons.check_box, color: Colors.green),
                      captionMaxLines: 6,
                    ),
                  ),
              style: ButtonStyle(
                overlayColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.white;
                  }
                  return null;
                }),
                padding: WidgetStateProperty.all(
                  EdgeInsets.symmetric(vertical: 18, horizontal: 35),
                ),
                foregroundColor: WidgetStateProperty.all(Colors.white),

                backgroundColor: WidgetStateProperty.resolveWith((
                  Set<WidgetState> states,
                ) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.amber[200];
                  }
                  if (states.contains(WidgetState.hovered)) {
                    return Colors.amber[400];
                  }
                  return Colors.amber[300];
                }),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
              ),
              child: AutoSizeText(
                'Next',
                minFontSize: 5,
                maxLines: 1,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      );
    }
  }

  Widget stepperContent(int index) {
    if (index == 0) {
      return checkbox4OptionTest(
        question:
            'You forked a repo 2 weeks ago. Now, the original repo has new commits. How do you sync your fork safely?',
        option1: codingCard('> git pull origin main\n> git push upstream main'),
        option2: codingCard(
          '> git remote add upstream https://github.com/original/repo.git\n> git fetch upstream\n> git merge upstream/main\n> git push upstream main  # Changed this line to make it invalid',
        ),
        option3: codingCard('> gh repo sync your-username/repo'),
        option4: codingCard(
          '> git clone https://github.com/your-username/repo.git\n> git commit -m "Sync fork"',
        ),
      );
    }
    if (index == 1) {
      return checkbox4OptionTest(
        question:
            'You fixed a bug in your fork’s "fix/header" branch. How do you propose the changes to the original repo?',
        option1: codingCard(
          '> git push origin fix/header\n> gh pr create --base original-owner:main --head your-username:fix/header',
        ),
        option2: codingCard(
          '> git push upstream fix/header\n> gh issue create --pr',
        ),
        option3: codingCard(
          '> git switch main\n> git merge fix/header\n> git push origin main',
        ),
        option4: codingCard(
          '> git remote add original https://github.com/original/repo.git\n> git push original fix/header',
        ),
      );
    }
    if (index == 2) {
      return checkbox4OptionTest(
        question:
            'A maintainer requested changes on your PR. How do you update the PR without breaking collaboration history?',
        option1: codingCard(
          '> git commit -m "Update based on feedback"\n> git push origin fix/header',
        ),
        option2: codingCard(
          '> git reset HEAD~1\n> git commit -m "Fix login bug"\n> git push origin fix/header --force',
        ),
        option3: codingCard(
          '> git switch main\n> git merge fix/header\n> git push origin main',
        ),
        option4: codingCard(
          '> git checkout -b fix/header-v2\n> git push origin fix/header-v2',
        ),
      );
    }
    return Placeholder();
  }

  void verifyAnswer({
    required int correctAnswer,
    required Widget correctedAnswer,
    required Function nextPage,
  }) {
    if (correctAnswer == checkboxVal) {
      showDialog(
        barrierColor: Colors.green.withValues(alpha: 0.3),
        context: context,
        builder: (BuildContext context) {
          Future.delayed(Duration(milliseconds: 200), () {
            Navigator.of(context).pop(true);
            nextPage();
          });
          return FittedBox(child: Icon(Icons.check, color: Colors.green));
        },
      );
      setState(() {
        checkboxVal = 0;
      });
    } else if (checkboxVal == 0) {
      showDialog(
        barrierColor: Colors.red.withValues(alpha: 0.3),
        context: context,
        builder: (BuildContext context) {
          Future.delayed(Duration(milliseconds: 200), () {
            Navigator.of(context).pop(true);
          });
          return FittedBox(child: Icon(Icons.close, color: Colors.red));
        },
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.transparent,
          behavior: SnackBarBehavior.floating,
          content: Components.optionsCard(
            title: 'Please choose an option!',
            caption: '',
            icon: Icon(Icons.check_box, color: Colors.green),
            captionMaxLines: 1,
          ),
          duration: Duration(seconds: 2),
        ),
      );
    } else if (correctAnswer != checkboxVal) {
      showDialog(
        barrierColor: Colors.red.withValues(alpha: 0.3),
        context: context,
        builder: (BuildContext context) {
          Future.delayed(Duration(milliseconds: 200), () {
            Navigator.of(context).pop(true);
          });
          return FittedBox(child: Icon(Icons.close, color: Colors.red));
        },
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.transparent,
          behavior: SnackBarBehavior.floating,
          content: correctedAnswer,
          duration: Duration(seconds: 8),
        ),
      );
    }
  }

  Widget checkbox4OptionTest({
    required String question,
    required Widget option1,
    required Widget option2,
    required Widget option3,
    required Widget option4,
  }) {
    return Card(
      elevation: 10,
      shadowColor: Colors.grey,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          spacing: 20,
          textBaseline: TextBaseline.ideographic,
          children: <Widget>[
            Expanded(
              child: FittedBox(
                child: Icon(Icons.question_mark_rounded, color: Colors.amber),
              ),
            ),
            Expanded(
              flex: 20,
              child: Column(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AutoSizeText(
                    'Scenario:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                    minFontSize: 10,
                    maxLines: 1,
                  ),
                  AutoSizeText(
                    question,
                    minFontSize: 10,
                    maxLines: 3,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    checkColor: Colors.white,
                    activeColor: Colors.green,
                    checkboxScaleFactor: 1.5,
                    title: option1,
                    value: checkboxVal == 1,
                    onChanged: (value) {
                      setState(() {
                        checkboxVal = 1;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    checkColor: Colors.white,
                    activeColor: Colors.green,
                    checkboxScaleFactor: 1.5,
                    title: option2,
                    value: checkboxVal == 2,
                    onChanged: (value) {
                      setState(() {
                        checkboxVal = 2;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    checkColor: Colors.white,
                    activeColor: Colors.green,
                    checkboxScaleFactor: 1.5,
                    title: option3,
                    value: checkboxVal == 3,
                    onChanged: (value) {
                      setState(() {
                        checkboxVal = 3;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    checkColor: Colors.white,
                    activeColor: Colors.green,
                    checkboxScaleFactor: 1.5,
                    title: option4,
                    value: checkboxVal == 4,
                    onChanged: (value) {
                      setState(() {
                        checkboxVal = 4;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Card titledCodingCardElevated(Widget titledCodingCard, Icon icon) {
    return Card(
      elevation: 10,
      shadowColor: Colors.grey,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          spacing: 20,
          textBaseline: TextBaseline.ideographic,
          children: <Widget>[
            Expanded(child: FittedBox(child: icon)),
            Expanded(flex: 20, child: titledCodingCard),
          ],
        ),
      ),
    );
  }

  Column titledCodingCard(String title, String code) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AutoSizeText(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 35,
            fontWeight: FontWeight.w600,
          ),
          minFontSize: 10,
          maxLines: 1,
        ),
        codingCard(code),
      ],
    );
  }

  Widget codingCard(String textCode) {
    return Card(
      margin: EdgeInsets.zero,
      color: Colors.grey[400],
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: SelectableText(textCode, style: TextStyle(fontSize: 20)),
      ),
    );
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
                                child: Column(
                                  spacing: 10,
                                  children: [
                                    Expanded(
                                      child: LinearProgressIndicator(
                                        borderRadius: BorderRadius.circular(30),
                                        value: (_currentStep + 1) / 3,
                                        backgroundColor: Colors.grey[200],
                                        color: Colors.amber[300],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 15,
                                      child: PageView.builder(
                                        controller: _pageController,
                                        onPageChanged: (value) {
                                          setState(() {
                                            _currentStep = value;
                                          });
                                        },
                                        itemCount: 3,
                                        itemBuilder: (
                                          BuildContext context,
                                          int index,
                                        ) {
                                          return SingleChildScrollView(
                                            child: Column(
                                              spacing: 10,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                AutoSizeText(
                                                  'Test ${_currentStep + 1}',
                                                  minFontSize: 15,
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                    fontSize: 40,
                                                    fontWeight: FontWeight.w800,
                                                    decoration:
                                                        TextDecoration
                                                            .underline,
                                                  ),
                                                ),
                                                stepperContent(_currentStep),
                                                navigationButtons(),
                                              ],
                                            ),
                                          );
                                        },
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
