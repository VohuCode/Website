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
              onPressed: _nextPage,
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
    } else if (_currentStep == 4) {
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
                Navigator.pushNamed(
                  context,
                  GitCoursePage.lessons.values.elementAt(7)['route']!.first,
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
                'WYL',
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
              onPressed: _nextPage,
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
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Components.optionsCard(
            title: 'Scenario:\n',
            caption:
                'You’re documenting your city’s history. Create a Git repository to track changes to your research.',
            icon: Icon(Icons.verified_rounded, color: Colors.lightBlue),
            captionMaxLines: 2 + 6 + 6,
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.list, color: Colors.lightBlue),
            title: 'Tasks:',
            itemsList: [
              Components.horizontalCodingCard(
                icon: Icon(
                  Icons.looks_one_rounded,
                  color: Colors.lightBlueAccent,
                ),
                title: 'Initialize a repo named: ',
                codingCard: Components.codingCard('city-history'),
              ),
              Components.optionsCard(
                title: 'Add a "landmarks.txt" file with 3 historical sites.',
                caption: '',
                icon: Icon(
                  Icons.looks_two_rounded,
                  color: Colors.lightBlueAccent,
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Commit with the message "feat: Add initial landmarks".',
                caption: '',
                icon: Icon(
                  Icons.looks_3_rounded,
                  color: Colors.lightBlueAccent,
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title:
                    'Later, discover a typo in one landmark name. Fix it and amend the commit.',
                caption: '',
                icon: Icon(
                  Icons.looks_4_rounded,
                  color: Colors.lightBlueAccent,
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.titledCodingCardElevated(
                Components.titledCodingCard(
                  'Commands Needed:',
                  '> git init city-history\n> git add landmarks.txt\n> git commit -m "feat: Add initial landmarks"\n> git commit --amend  ',
                ),
                Icon(Icons.code, color: Colors.blue),
              ),
            ],
          ),
        ],
      );
    }
    if (index == 1) {
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Components.titledHyperLink(
            icon: Icon(Icons.verified_rounded, color: Colors.lightBlue),
            title: 'Scenario: ',
            text1: 'Practice contributing via GitHub’s test repo:',
            linkText: 'Spoon-Knife',
            link: 'https://github.com/octocat/Spoon-Knife',
            text2: '. Add your profile to a profiles/directory.',
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.list, color: Colors.lightBlue),
            title: 'Tasks:',
            itemsList: [
              Components.optionsCard(
                title: 'Fork the repo to your account.',
                caption: '',
                icon: Icon(
                  Icons.looks_one_rounded,
                  color: Colors.lightBlueAccent,
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.titledCodingCardElevated(
                Components.titledCodingCard(
                  'Clone your fork via SSH:',
                  '> git clone git@github.com:your-username/Spoon-Knife.git ',
                ),
                Icon(Icons.looks_two_rounded, color: Colors.lightBlueAccent),
              ),
              Components.titledCodingCardElevated(
                Components.titledCodingCard(
                  'Create a branch:',
                  '> git switch -c add-yourname-profile  ',
                ),
                Icon(Icons.looks_3_rounded, color: Colors.lightBlueAccent),
              ),
              Components.titledCodingCardElevated(
                Components.titledCodingCard(
                  'Add a file profiles/yourname.md with:',
                  '# Your Name\n- Hobby: Cooking, coding, etc.',
                ),
                Icon(Icons.looks_4_rounded, color: Colors.lightBlueAccent),
              ),
              Components.titledCodingCardElevated(
                Components.titledCodingCard(
                  'Commit and push:',
                  '> git add profiles/yourname.md\n> git commit -m "docs: Add yourname profile"\n> git push -u origin add-yourname-profile ',
                ),
                Icon(Icons.looks_5_rounded, color: Colors.lightBlueAccent),
              ),
              Components.titledCodingCardElevated(
                Components.titledCodingCard(
                  'Create a PR via GitHub CLI:',
                  '> gh pr create --base main --head add-yourname-profile --web',
                ),
                Icon(Icons.looks_6_rounded, color: Colors.lightBlueAccent),
              ),
            ],
          ),
        ],
      );
    }
    if (index == 2) {
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Components.titledHyperLink(
            title: 'Scenario: ',
            text1: 'The ',
            linkText: 'First Contributions',
            link: 'https://github.com/firstcontributions/first-contributions',
            text2: ' repo has a typo in "Contributors.md".',
            icon: Icon(Icons.verified_rounded, color: Colors.lightBlue),
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.list, color: Colors.lightBlue),
            title: 'Tasks:',
            itemsList: [
              Components.optionsCard(
                title: 'Fork the repo.',
                caption: '',
                icon: Icon(
                  Icons.looks_one_rounded,
                  color: Colors.lightBlueAccent,
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Clone your fork and sync with upstream.',
                caption: '',
                icon: Icon(
                  Icons.looks_two_rounded,
                  color: Colors.lightBlueAccent,
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Fix the typo in a branch fix/typo.',
                caption: '',
                icon: Icon(
                  Icons.looks_3_rounded,
                  color: Colors.lightBlueAccent,
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title:
                    'Push and open a PR with the title "docs: Fix typo in Contributors.md".',
                caption: '',
                icon: Icon(
                  Icons.looks_4_rounded,
                  color: Colors.lightBlueAccent,
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.titledCodingCardElevated(
                Components.titledCodingCard(
                  'Commands Needed:',
                  '> git remote add upstream https://github.com/firstcontributions/first-contributions.git\n> git fetch upstream\n> git rebase upstream/main\n> gh pr create --title "docs: Fix typo in Contributors.md" ',
                ),
                Icon(Icons.code, color: Colors.lightBlueAccent),
              ),
            ],
          ),
        ],
      );
    }
    if (index == 3) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 20,
        children: [
          Components.optionsCard(
            title: 'Scenario:\n',
            caption:
                'A payment-processor script worked in commit a1b2c3d but broke in HEAD. Find the faulty commit.',
            icon: Icon(Icons.verified_rounded, color: Colors.lightBlue),
            captionMaxLines: 2 + 6 + 6,
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.list, color: Colors.lightBlue),
            title: 'Tasks:',
            itemsList: [
              Components.optionsCard(
                title: 'Start a bisect session.',
                caption: '',
                icon: Icon(
                  Icons.looks_one_rounded,
                  color: Colors.lightBlueAccent,
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Test if the script works at each step.',
                caption: '',
                icon: Icon(
                  Icons.looks_two_rounded,
                  color: Colors.lightBlueAccent,
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Identify the bad commit and revert it.',
                caption: '',
                icon: Icon(
                  Icons.looks_3_rounded,
                  color: Colors.lightBlueAccent,
                ),
                captionMaxLines: 1 + 6 + 6,
              ),

              Components.titledCodingCardElevated(
                Components.titledCodingCard(
                  'Commands Needed:',
                  '> git bisect start\n> git bisect good a1b2c3d\n> git bisect bad HEAD\n> ./test-payment-script.sh  # Simulate testing\n> git bisect reset\n> git revert <bad-commit>',
                ),
                Icon(Icons.code, color: Colors.lightBlueAccent),
              ),
            ],
          ),
        ],
      );
    }
    if (index == 4) {
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Components.topicTitledCard(
            icon: Icon(Icons.list, color: Colors.lightBlue),
            title: 'Scenario:',
            itemsList: [
              AutoSizeText(
                'You accidentally:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
                minFontSize: 10,
                maxLines: 1 + 6,
              ),
              Components.optionsCard(
                title: 'Added "passwords.txt" (untracked)',
                caption: '',
                icon: Icon(
                  Icons.circle_outlined,
                  color: Colors.lightBlueAccent,
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Committed a buggy "login.js"',
                caption: '',
                icon: Icon(
                  Icons.circle_outlined,
                  color: Colors.lightBlueAccent,
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Force-pushed broken code to "main"',
                caption: '',
                icon: Icon(
                  Icons.circle_outlined,
                  color: Colors.lightBlueAccent,
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
            ],
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.list, color: Colors.lightBlue),
            title: 'Tasks:',
            itemsList: [
              Components.optionsCard(
                title: 'Delete "passwords.txt" without manual cleanup.',
                caption: '',
                icon: Icon(
                  Icons.looks_one_rounded,
                  color: Colors.lightBlueAccent,
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Undo the buggy commit without losing later work.',
                caption: '',
                icon: Icon(
                  Icons.looks_two_rounded,
                  color: Colors.lightBlueAccent,
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Restore the remote repo to the pre-force-push state.',
                caption: '',
                icon: Icon(
                  Icons.looks_3_rounded,
                  color: Colors.lightBlueAccent,
                ),
                captionMaxLines: 1 + 6 + 6,
              ),

              Components.titledCodingCardElevated(
                Components.titledCodingCard(
                  'Commands Needed:',
                  '> git clean -f  # Remove untracked passwords.txt\n> git revert HEAD~1  # Undo bad commit publicly\n> git reset --hard HEAD@{1}  # Local undo\n> git push --force origin main  # Only if done immediately after mistake  ',
                ),
                Icon(Icons.code, color: Colors.lightBlueAccent),
              ),
            ],
          ),
        ],
      );
    }
    return Placeholder();
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
                        value: (_currentStep + 1) / 5,
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
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return SingleChildScrollView(
                            child: Column(
                              spacing: 10,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                AutoSizeText(
                                  GitCoursePage.lessons.values.elementAt(
                                    6,
                                  )['content']![index],
                                  minFontSize: 15,
                                  textAlign: TextAlign.center,
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
