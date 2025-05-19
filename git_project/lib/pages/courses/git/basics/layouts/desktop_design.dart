import 'package:auto_size_text/auto_size_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:git_project/appbar/appbar.dart';
import 'package:git_project/components.dart';
import 'package:git_project/pages/courses/git/intro/git_course_page.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyDesktopLayout extends StatefulWidget {
  const MyDesktopLayout({super.key});

  @override
  State<MyDesktopLayout> createState() => _MyDesktopLayoutState();
}

class _MyDesktopLayoutState extends State<MyDesktopLayout> {
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
                maxLines: 1,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      );
    } else if (_currentStep ==
        GitCoursePage.lessons.values.elementAt(1)['content']!.length - 1) {
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
                Navigator.pushNamed(
                  context,
                  '${GitCoursePage.lessons.values.elementAt(1)['route']!.first}-quiz',
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
                'Quiz',
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
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          AutoSizeText(
            'Your Code’s Safety Net',
            minFontSize: 8,
            maxLines: 1,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.optionsCard(
            title: 'Analogy: ',
            caption:
                "Like a time machine for your code – rewind mistakes or experiment freely!",
            icon: Icon(Icons.keyboard_arrow_right_rounded, color: Colors.black),
            captionMaxLines: 1,
          ),
          Components.optionsCard(
            title: 'Why It Matters:',
            caption:
                '''\n  - Track every change (who, when, why).\n  - Collaborate without overwriting others’ work.\n  - Recover deleted code in seconds.''',
            icon: Icon(Icons.question_mark_rounded, color: Colors.black),
            captionMaxLines: 4,
          ),
          Components.optionsCard(
            title: 'Types: ',
            caption: 'Local (solo) vs. Distributed (team) – Git is the latter.',
            icon: Icon(Icons.data_object, color: Colors.black),
            captionMaxLines: 1,
          ),
          Components.optionsCard(
            title: 'Real-World Example: ',
            caption:
                '\nImagine writing a book: Version control lets you save drafts, merge edits, and undo typos.',
            icon: Icon(Icons.computer, color: Colors.black),
            captionMaxLines: 2,
          ),
        ],
      );
    }
    if (index == 1) {
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          AutoSizeText(
            'Set Up in 5 Minutes',
            minFontSize: 8,
            maxLines: 1,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Card(
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
                      child: Icon(Icons.install_desktop, color: Colors.black),
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 20,
                      children: [
                        AutoSizeText(
                          'Install:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                          minFontSize: 10,
                          maxLines: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                '- Windows:  ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              GestureDetector(
                                child: AutoSizeText(
                                  'Git for Windows',
                                  style: TextStyle(
                                    color: Colors.lightBlue,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  minFontSize: 10,
                                  maxLines: 1,
                                ),
                                onTap:
                                    () =>
                                        launchUrlString('https://git-scm.com/'),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            spacing: 10,
                            children: [
                              AutoSizeText(
                                '- macOS: ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                                minFontSize: 10,
                                maxLines: 1,
                              ),
                              Components.codingCard('brew install git'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            spacing: 10,
                            children: [
                              AutoSizeText(
                                '- Linux: ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                                minFontSize: 10,
                                maxLines: 1,
                              ),
                              Components.codingCard('sudo apt-get install git'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
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
                      child: Icon(Icons.settings, color: Colors.black),
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: Components.titledCodingCard(
                      'Configure:',
                      '> git config --global user.name "Your Name"\n> git config --global user.email "your@email.com"',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Verify:',
              '> git --version\n> git config --list',
            ),
            Icon(Icons.settings, color: Colors.black),
          ),
        ],
      );
    }
    if (index == 2) {
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            'Start Tracking Changes',
            minFontSize: 8,
            maxLines: 1,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Initialize:',
              '> mkdir my-project\n> cd my-project\n> git init',
            ),
            Icon(Icons.start),
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Clone:',
              '> git clone https://github.com/user/repo.git',
            ),
            Icon(Icons.start),
          ),
          Card(
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
                      child: Icon(Icons.lightbulb, color: Colors.black),
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: Column(
                      spacing: 20,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'Key Difference:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                          minFontSize: 10,
                          maxLines: 1,
                        ),
                        Row(
                          spacing: 10,
                          children: [
                            Components.codingCard('git init'),
                            AutoSizeText(
                              ' creates a new repo.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                              minFontSize: 10,
                              maxLines: 1,
                            ),
                          ],
                        ),
                        Row(
                          spacing: 10,
                          children: [
                            Components.codingCard('git clone'),
                            AutoSizeText(
                              ' copies an existing one.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                              minFontSize: 10,
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Components.optionsCard(
            title: 'Exercise:',
            caption:
                '\nCreate a repo named "hello-git".\nAdd a "README.md" file.',
            icon: Icon(Icons.laptop, color: Colors.black),
            captionMaxLines: 3,
          ),
        ],
      );
    }
    if (index == 3) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 20,
        children: [
          AutoSizeText(
            'Save Snapshots, Not Chaos',
            minFontSize: 8,
            maxLines: 1,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.optionsCard(
            title: 'Staging Area Analogy: \n',
            caption:
                'Think of it as a photo album – you select which files to "save" (commit).',
            icon: Icon(Icons.photo_album, color: Colors.lime),
            captionMaxLines: 2,
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Commands:',
              '> git add <file>  # Stage a file  \n> git add .       # Stage all changes\n> git commit -m "Descriptive message"',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.titledCodingCardElevated(
            Column(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AutoSizeText(
                  'Good Commit Messages:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                  minFontSize: 10,
                  maxLines: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: FittedBox(
                        child: Icon(Icons.close, color: Colors.red),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: AutoSizeText(
                        'Bad: ',
                        minFontSize: 8,
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      flex: 20,
                      child: Components.codingCard(
                        'git commit -m "fixed stuff"',
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: FittedBox(
                        child: Icon(Icons.check_box, color: Colors.green),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: AutoSizeText(
                        'Good: ',
                        minFontSize: 8,
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      flex: 20,
                      child: Components.codingCard(
                        'git commit -m "Add user login validation"',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.question_answer, color: Colors.lightGreen),
          ),
          Components.optionsCard(
            title: 'Exercise:',
            caption:
                '\nStage and commit your README.md with the message “Initial commit”.',
            icon: Icon(Icons.laptop, color: Colors.tealAccent),
            captionMaxLines: 2,
          ),
        ],
      );
    }
    if (index == 4) {
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            'Your Project’s Storyline',
            minFontSize: 8,
            maxLines: 1,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Commands:',
              '> git log           # Full history  \n> git log --oneline     # Compact view\n> git log --graph      # Visualize branches',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.optionsCard(
            title: 'Pro Tip:',
            caption: '\nUse git log -p to see exact changes in each commit.',
            icon: Icon(Icons.star, color: Colors.yellowAccent),
            captionMaxLines: 2,
          ),
        ],
      );
    }
    if (index == 5) {
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            'Ctrl+Z for Coders',
            minFontSize: 8,
            maxLines: 1,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Unstage a File:',
              '> git restore --staged <file>',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Discard Unstaged Changes:',
              '> git restore <file>',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Amend Last Commit:',
              '> git commit --amend',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.optionsCard(
            title: 'Real-World Scenario:',
            caption:
                '"\nOops! I committed the wrong message. Let’s fix it with [--amend]."',
            icon: Icon(Icons.laptop, color: Colors.tealAccent),
            captionMaxLines: 2,
          ),
        ],
      );
    }
    if (index == 6) {
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            'Code Without Fear',
            minFontSize: 8,
            maxLines: 1,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.optionsCard(
            title: 'Why Branch?',
            caption: '\nExperiment freely without breaking your main code.',
            icon: Icon(Icons.question_mark_rounded, color: Colors.amber),
            captionMaxLines: 2,
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Commands:',
              '> git branch <name>    # Create branch  \n> git switch <name>    # Switch to branch\n> git switch -c <name> # Create + switch',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.optionsCard(
            title: 'Analogy: ',
            caption: 'Branches are like parallel universes for your code.',
            icon: Icon(Icons.chrome_reader_mode, color: Colors.cyan),
            captionMaxLines: 1,
          ),
          Components.optionsCard(
            title: 'Exercise:',
            caption:
                '\nCreate a "feature/login" branch.\nAdd a "login.html" file and commit.',
            icon: Icon(Icons.laptop, color: Colors.tealAccent),
            captionMaxLines: 3,
          ),
        ],
      );
    }
    if (index == 7) {
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            'Team Up on GitHub/GitLab',
            minFontSize: 8,
            maxLines: 1,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Add Remote:',
              'git remote add origin <url>',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard('Push:', 'git push -u origin main  '),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard('Pull:', 'git pull origin main'),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.optionsCard(
            title: 'Exercise:',
            caption: '\nPush your "hello-git" repo to GitHub.',
            icon: Icon(Icons.laptop, color: Colors.tealAccent),
            captionMaxLines: 2,
          ),
        ],
      );
    }
    if (index == 8) {
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            'Code Like a Pro',
            minFontSize: 8,
            maxLines: 1,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Card(
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
                      child: Icon(Icons.star, color: Colors.yellowAccent),
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 20,
                      children: [
                        AutoSizeText(
                          'Golden Rules:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                          minFontSize: 10,
                          maxLines: 1,
                        ),
                        Components.optionsCard(
                          title: 'Atomic Commits: ',
                          caption: 'One logical change per commit.',
                          icon: Icon(
                            Icons.warning_rounded,
                            color: Colors.amber,
                          ),
                          captionMaxLines: 1,
                        ),
                        Components.optionsCard(
                          title: 'Meaningful Messages: ',
                          caption: 'Explain why, not just what.',
                          icon: Icon(
                            Icons.warning_rounded,
                            color: Colors.amber,
                          ),
                          captionMaxLines: 1,
                        ),
                        Components.optionsCard(
                          title: '.gitignore: ',
                          caption: 'Exclude logs, binaries, secrets.',
                          icon: Icon(
                            Icons.warning_rounded,
                            color: Colors.amber,
                          ),
                          captionMaxLines: 1,
                        ),
                        Components.optionsCard(
                          title: 'Branch Naming: ',
                          caption:
                              '"feature/login", "bugfix/header", not "branch1."!!',
                          icon: Icon(
                            Icons.warning_rounded,
                            color: Colors.amber,
                          ),
                          captionMaxLines: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
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
                      child: Icon(
                        Icons.question_answer,
                        color: Colors.lightGreen,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 20,
                      children: [
                        AutoSizeText(
                          'Bad vs. Good:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                          minFontSize: 10,
                          maxLines: 1,
                        ),
                        Row(
                          spacing: 10,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: FittedBox(
                                child: Icon(Icons.close, color: Colors.red),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.loose,
                              flex: 16,
                              child: Components.codingCard(
                                'git commit -m "update"',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 10,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: FittedBox(
                                child: Icon(
                                  Icons.check_box,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.loose,
                              flex: 16,
                              child: Components.codingCard(
                                'git commit -m "Fix header overflow on mobile"',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Components.optionsCard(
            title: 'Build a Mini Project:',
            caption:
                '\n   1- Initialize a repo.\n   2- Create a calculator.py file.\n   3- Commit changes with clear messages.\n   4- Push to GitHub.',
            icon: Icon(Icons.laptop, color: Colors.tealAccent),
            captionMaxLines: 5,
          ),
        ],
      );
    }
    return Placeholder();
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
                                        value:
                                            (_currentStep + 1) /
                                            GitCoursePage.lessons.values
                                                .elementAt(1)['content']!
                                                .length,
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
                                        itemCount:
                                            GitCoursePage.lessons.values
                                                .elementAt(1)['content']!
                                                .length,
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
                                                  GitCoursePage.lessons.values
                                                      .elementAt(
                                                        1,
                                                      )['content']![index],
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
