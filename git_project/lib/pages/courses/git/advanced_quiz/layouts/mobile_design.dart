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
                          'Rebase (git rebase main) replays feature/login commits on top of main for a clean history.\nForce-push updates the remote branch after rewriting history.\nTraps: Option 1 merges in the wrong direction. Option 2 creates a merge commit. Option 4 cherry-picks chaotically.',
                      icon: Icon(Icons.check_box, color: Colors.green),
                      captionMaxLines: 6 + 6 + 6,
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
                maxLines: 1 + 6,
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
                maxLines: 1 + 6,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                verifyAnswer(
                  nextPage:
                      () => Navigator.pushNamed(
                        context,
                        GitCoursePage.lessons.values
                            .elementAt(5)['route']!
                            .first,
                      ),
                  correctAnswer: 1,
                  correctedAnswer: Components.optionsCard(
                    title: 'Explanation:\n',
                    caption:
                        'Pre-commit hooks run locally before a commit is created.\nTraps: Option 2 uses GitHub Actions (not a hook). Option 3 acts after the commit. Option 4 is fake syntax.',
                    icon: Icon(Icons.check_box, color: Colors.green),
                    captionMaxLines: 6 + 6 + 6,
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
                GitCoursePage.lessons.keys.elementAt(5),
                minFontSize: 5,
                maxLines: 1 + 6,
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
                maxLines: 1 + 6,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed:
                  () => verifyAnswer(
                    nextPage: _nextPage,
                    correctAnswer: 2,
                    correctedAnswer: Components.optionsCard(
                      title: 'Explanation:\n',
                      caption:
                          'git bisect run automates testing commits between good and bad to find the culprit.\nTraps: Option 1 manually searches logs. Option 3 uses reflog for recovery, not debugging.',
                      icon: Icon(Icons.check_box, color: Colors.green),
                      captionMaxLines: 6 + 6 + 6,
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
                maxLines: 1 + 6,
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
            'You’re working on a feature/login branch that diverged from main 10 commits ago. You want to integrate main’s latest changes while keeping a linear history. What do you do?',
        option1: codingCard('> git switch main\n> git merge feature/login  '),
        option2: codingCard(
          '> git switch feature/login\n> git pull origin main',
        ),
        option3: codingCard(
          '> git switch feature/login\n> git rebase main\n> git push --force',
        ),
        option4: codingCard(
          '> git switch main\n> git cherry-pick feature/login',
        ),
      );
    }
    if (index == 1) {
      return checkbox4OptionTest(
        question:
            'A bug exists in HEAD but wasn’t present in commit abc123. How do you find the exact commit that introduced the bug?',
        option1: codingCard('> git log abc123..HEAD\n> git blame file.txt'),
        option2: codingCard(
          '> git bisect start\n> git bisect good abc123\n> git bisect bad HEAD\n> git bisect run npm test',
        ),
        option3: codingCard('> git reflog\n> git checkout HEAD~5'),
        option4: codingCard(
          '> git worktree add ../test-branch\n> cd ../test-branch',
        ),
      );
    }
    if (index == 2) {
      return checkbox4OptionTest(
        question:
            'You want to prevent commits with the word "WIP" in messages. How do you enforce this?',
        option1: codingCard(
          '> # .git/hooks/pre-commit\nif grep -q "WIP" "\$1"; then\n  echo "WIP commits blocked!"\n  exit 1\nfi',
        ),
        option2: codingCard(
          '> # .github/workflows/pre-commit.yml\nname: Block WIP\non: commit\njobs:\n  check:\n    runs-on: ubuntu-latest\n    steps:\n      - uses: actions/checkout@v4\n      - run: grep -q "WIP" "\$GITHUB_COMMIT_MESSAGE" ',
        ),
        option3: codingCard(
          '> # .git/hooks/post-commit\nif git log -1 | grep -q "WIP"; then\n  git reset HEAD~1\nfi  ',
        ),
        option4: codingCard('> git config --global hook.preventwip true'),
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
            captionMaxLines: 1 + 6 + 6,
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
              flex: 2,
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
                    minFontSize: 15,
                    maxLines: 1 + 6,
                  ),
                  AutoSizeText(
                    question,
                    minFontSize: 13,
                    maxLines: 3 + 6,
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
          maxLines: 1 + 6,
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
                                            maxLines: 1 + 6,
                                          )
                                          : null,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  title: AutoSizeText(
                                    GitCoursePage.lessons.keys.elementAt(index),
                                    style: TextStyle(fontSize: 20),
                                    minFontSize: 5,
                                    maxLines: 1 + 6,
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
                                        maxLines: 1 + 6,
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
                        itemBuilder: (BuildContext context, int index) {
                          return SingleChildScrollView(
                            child: Column(
                              spacing: 10,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                AutoSizeText(
                                  'Test ${_currentStep + 1}',
                                  minFontSize: 15,
                                  maxLines: 1 + 6,
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w800,
                                    decoration: TextDecoration.underline,
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
    );
  }
}
