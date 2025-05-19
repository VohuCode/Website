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
        GitCoursePage.lessons.values.elementAt(3)['content']!.length - 1) {
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
                //TODO: change route number
                Navigator.pushNamed(
                  context,
                  '${GitCoursePage.lessons.values.elementAt(3)['route']!.first}-quiz',
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
            'The Open-Source Playground',
            minFontSize: 8,
            maxLines: 1,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.optionsCard(
            title: 'Why Contribute?\n',
            caption: 'Fix bugs, add features, learn collaboratively.',
            icon: Icon(Icons.question_mark_rounded, color: Colors.amber),
            captionMaxLines: 2,
          ),
          Components.optionsCard(
            title: 'Workflow: ',
            caption: 'Fork → Clone → Branch → Code → PR → Iterate.',
            icon: Icon(Icons.workspaces_rounded, color: Colors.blueAccent),
            captionMaxLines: 1,
          ),
          Components.optionsCard(
            title: 'Analogy:',
            caption:
                '\n"Contributing is like editing a Wikipedia page – propose changes, discuss, and improve collectively."',
            icon: Icon(Icons.chrome_reader_mode, color: Colors.cyan),
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
            'Create Your Copy of the Code',
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
                      child: Icon(
                        Icons.verified_rounded,
                        color: Colors.lightBlue,
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
                          'Steps:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                          minFontSize: 10,
                          maxLines: 1,
                        ),
                        Components.optionsCard(
                          title: '',
                          caption:
                              'On GitHub, click "Fork" (top-right of any repo).',
                          icon: Icon(
                            Icons.looks_one_rounded,
                            color: Colors.cyan,
                          ),
                          captionMaxLines: 1,
                        ),
                        Components.horizontalCodingCard(
                          icon: Icon(
                            Icons.looks_two_rounded,
                            color: Colors.cyan,
                          ),
                          title: 'Choose your account ',
                          codingCard: Components.codingCard(
                            '(creates your-username/repo-name)',
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
                      child: Icon(
                        Icons.local_fire_department,
                        color: Colors.deepOrange,
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
                          'Pro Tips:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                          minFontSize: 10,
                          maxLines: 1,
                        ),
                        Components.optionsCard(
                          title: 'Sync Forks: ',
                          caption:
                              'Use "Fetch upstream" on GitHub to stay updated.',
                          icon: Icon(Icons.star, color: Colors.amber),
                          captionMaxLines: 1,
                        ),
                        Components.optionsCard(
                          title: 'Common Mistake: ',
                          caption:
                              'Editing the main branch directly (always create a new branch!).',
                          icon: Icon(Icons.star, color: Colors.amber),
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
                      child: Icon(Icons.laptop, color: Colors.tealAccent),
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'Exercise: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                          minFontSize: 10,
                          maxLines: 1,
                        ),
                        AutoSizeText(
                          'Fork the ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                          minFontSize: 10,
                          maxLines: 1,
                        ),
                        GestureDetector(
                          child: AutoSizeText(
                            'GitHub Docs repo',
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                            minFontSize: 10,
                            maxLines: 1,
                          ),
                          onTap:
                              () => launchUrlString(
                                'https://github.com/github/docs',
                              ),
                        ),
                        AutoSizeText(
                          ' and explore its structure.',
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
                  ),
                ],
              ),
            ),
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
            'Bring the Code to Your Machine',
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
              '>git clone git@github.com:your-username/repo-name.git\n>cd repo-name',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.optionsCard(
            title: 'Clone: ',
            caption: 'Downloads the repo, including all history and branches.',
            icon: Icon(Icons.lightbulb, color: Colors.yellowAccent),
            captionMaxLines: 1,
          ),
          Components.optionsCard(
            title: 'Remote: ',
            caption: 'Your fork is origin, the original repo is upstream.',
            icon: Icon(Icons.lightbulb, color: Colors.yellowAccent),
            captionMaxLines: 1,
          ),
          Components.optionsCard(
            title: 'Common Error: ',
            caption:
                'Cloning the original repo instead of your fork → no push access!',
            icon: Icon(Icons.warning_amber, color: Colors.amberAccent),
            captionMaxLines: 1,
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
            'Isolate Your Work',
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
              'Workflow:',
              '> git switch -c fix-typo  # Create and switch to a new branch',
            ),
            Icon(Icons.code, color: Colors.blue),
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
                      child: Icon(Icons.label_rounded, color: Colors.orange),
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
                          'Branch Naming Conventions: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                          minFontSize: 10,
                          maxLines: 1,
                        ),
                        Components.horizontalCodingCard(
                          icon: Icon(
                            Icons.circle_outlined,
                            color: Colors.orangeAccent,
                          ),
                          title: 'specific: ',
                          codingCard: Components.codingCard('fix/login-button'),
                        ),
                        Components.horizontalCodingCard(
                          icon: Icon(
                            Icons.circle_outlined,
                            color: Colors.orangeAccent,
                          ),
                          title: 'category-based: ',
                          codingCard: Components.codingCard(
                            'docs/update-install-guide',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Components.optionsCard(
            title: 'Analogy:\n',
            caption:
                '"Branches are like parallel universes – experiment without breaking the main timeline."',
            icon: Icon(Icons.chrome_reader_mode, color: Colors.lightBlue),
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
            'Save and Share Your Progress',
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
                      child: Icon(Icons.lightbulb, color: Colors.yellowAccent),
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
                          'Best Practices:',
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
                          icon: Icon(Icons.star, color: Colors.yellowAccent),
                          captionMaxLines: 1,
                        ),
                        Components.titledCodingCardElevated(
                          Components.titledCodingCard(
                            'Conventional Commits:',
                            '> git commit -m "feat: Add dark mode toggle"\n> git commit -m "fix: Resolve login timeout bug"',
                          ),
                          Icon(Icons.star, color: Colors.yellowAccent),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Push to Your Fork:',
              '> git push origin fix-typo  # Push branch to your fork',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.optionsCard(
            title: 'Exercise: ',
            caption:
                'Add a emoji to a repo’s README and commit with a descriptive message.',
            icon: Icon(Icons.laptop, color: Colors.tealAccent),
            captionMaxLines: 1,
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
            'Propose Your Changes',
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
                      child: Icon(Icons.code, color: Colors.blue),
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
                          'Steps:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                          minFontSize: 10,
                          maxLines: 1,
                        ),
                        Components.optionsCard(
                          title: '',
                          caption:
                              'On GitHub, navigate to your fork → "Pull Requests" → "New PR".',
                          icon: Icon(
                            Icons.looks_one_rounded,
                            color: Colors.lightBlue,
                          ),
                          captionMaxLines: 1,
                        ),
                        Components.optionsCard(
                          captionMaxLines: 1,
                          icon: Icon(
                            Icons.looks_two_rounded,
                            color: Colors.lightBlue,
                          ),
                          caption:
                              'Select base: main (original repo) and compare: fix-typo (your branch).',
                          title: '',
                        ),
                        Components.optionsCard(
                          captionMaxLines: 3,
                          icon: Icon(
                            Icons.looks_3_rounded,
                            color: Colors.lightBlue,
                          ),
                          caption:
                              '\n"What": Summarize the change.\n"Why": Explain the problem it solves.',
                          title: 'Add a title and description:',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Components.optionsCard(
            title: 'Pro Tip: ',
            caption: 'Use keywords like "Closes #10" to auto-link issues.',
            icon: Icon(Icons.local_fire_department, color: Colors.deepOrange),
            captionMaxLines: 1,
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
            'Collaborate Like a Pro',
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
                      child: Icon(Icons.code, color: Colors.blue),
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
                          'Workflow:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                          minFontSize: 10,
                          maxLines: 1,
                        ),
                        Components.optionsCard(
                          title: '',
                          caption:
                              'Make changes locally based on reviewer comments.',
                          icon: Icon(
                            Icons.looks_one_rounded,
                            color: Colors.lightBlue,
                          ),
                          captionMaxLines: 1,
                        ),
                        Components.titledCodingCardElevated(
                          Components.titledCodingCard(
                            'Commit and push to the same branch:',
                            '> git commit -m "refactor: Simplify CSS as suggested"\n> git push origin fix-typo',
                          ),
                          Icon(
                            Icons.looks_two_rounded,
                            color: Colors.lightBlue,
                          ),
                        ),
                        Components.optionsCard(
                          captionMaxLines: 3,
                          icon: Icon(
                            Icons.looks_3_rounded,
                            color: Colors.lightBlue,
                          ),
                          caption: 'GitHub auto-updates the PR.',
                          title: '',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Components.optionsCard(
            title: 'Golden Rule:\n',
            caption: 'Never force-push after reviews (breaks comment threads).',
            captionMaxLines: 2,
            icon: Icon(Icons.local_fire_department, color: Colors.deepOrange),
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
            'Keep Your Fork Updated',
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
                      child: Icon(Icons.code, color: Colors.blue),
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
                          'Steps:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                          minFontSize: 10,
                          maxLines: 1,
                        ),
                        Components.titledCodingCardElevated(
                          Components.titledCodingCard(
                            'Add the original repo as upstream:',
                            '> git remote add upstream git@github.com:original-owner/repo.git',
                          ),
                          Icon(
                            Icons.looks_one_rounded,
                            color: Colors.lightBlue,
                          ),
                        ),
                        Components.titledCodingCardElevated(
                          Components.titledCodingCard(
                            'Fetch and merge updates:',
                            '> git fetch upstream  \n> git switch main  \n> git merge upstream/main',
                          ),
                          Icon(
                            Icons.looks_two_rounded,
                            color: Colors.lightBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Components.optionsCard(
            title: 'Warning:\n',
            caption: 'Always sync before starting new work to avoid conflicts!',
            icon: Icon(Icons.warning_amber, color: Colors.amber),
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
            'Direct Collaboration',
            minFontSize: 8,
            maxLines: 1,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),

          Components.optionsCard(
            title: 'When to Use:\n',
            caption:
                'You’re a repo collaborator (not for public/open-source projects).',
            icon: Icon(Icons.watch_later_outlined, color: Colors.teal),
            captionMaxLines: 2,
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Workflow:',
              '> git clone git@github.com:org/repo.git  # Clone directly  \n> git switch -c new-feature\n> git push origin new-feature',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.optionsCard(
            title: 'Key Difference: ',
            caption:
                'No need for a fork – push branches directly to the main repo.',
            icon: Icon(Icons.compare_arrows, color: Colors.amberAccent),
            captionMaxLines: 1,
          ),
        ],
      );
    }
    if (index == 9) {
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            'Plan and Track Work',
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
                      child: Icon(Icons.list, color: Colors.amber[700]),
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
                          'Issues:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                          minFontSize: 10,
                          maxLines: 1,
                        ),
                        Components.optionsCard(
                          title: 'Create: ',
                          caption: 'Describe bugs, request features.',
                          icon: Icon(
                            Icons.circle_outlined,
                            color: Colors.amber[600],
                          ),
                          captionMaxLines: 1,
                        ),
                        Components.optionsCard(
                          title: 'Templates: ',
                          caption:
                              'Standardize with ".github/ISSUE_TEMPLATE.md".',
                          icon: Icon(
                            Icons.circle_outlined,
                            color: Colors.amber[600],
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
          Components.optionsCard(
            title: 'Discussions:\n',
            caption: 'Forums for Q&A, brainstorming (enable in repo settings).',
            icon: Icon(Icons.format_quote, color: Colors.lightBlue),
            captionMaxLines: 2,
          ),
          Components.optionsCard(
            title: 'Pro Tip: ',
            caption: 'Use "@mention" to tag maintainers or link contributors.',
            icon: Icon(Icons.local_fire_department, color: Colors.deepOrange),
            captionMaxLines: 1,
          ),
        ],
      );
    }
    if (index == 10) {
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            'Certify Your Work',
            minFontSize: 8,
            maxLines: 1,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.optionsCard(
            title: 'Why:\n',
            caption:
                'Required for licenses like Apache 2.0 (Developer Certificate of Origin).',
            icon: Icon(Icons.question_mark_rounded, color: Colors.amber),
            captionMaxLines: 2,
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'How:',
              '> git commit -s -m "docs: Update contribution guide"  \n#Add -s to commits',
            ),
            Icon(Icons.input, color: Colors.blue),
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Output:',
              'Signed-off-by: Your Name <your@email.com>',
            ),
            Icon(Icons.output, color: Colors.blue),
          ),
        ],
      );
    }
    if (index == 11) {
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            'Read Before You Code',
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
                      child: Icon(
                        Icons.screen_search_desktop_sharp,
                        color: Colors.blueAccent[700],
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
                          'Look For:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                          minFontSize: 10,
                          maxLines: 1,
                        ),
                        Components.optionsCard(
                          title: '',
                          caption: '"Run "npm test" before pushing."',
                          icon: Icon(
                            Icons.warning_amber_rounded,
                            color: Colors.blueAccent[700],
                          ),
                          captionMaxLines: 1,
                        ),
                        Components.optionsCard(
                          title: '',
                          caption: '"Follow the Airbnb React style guide."',
                          icon: Icon(
                            Icons.warning_amber_rounded,
                            color: Colors.blueAccent[700],
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
        ],
      );
    }
    if (index == 12) {
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            'Manage Cross-Project Contributions',
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
                      child: Icon(Icons.key_rounded, color: Colors.amber),
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
                          'Tools:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                          minFontSize: 10,
                          maxLines: 1,
                        ),
                        Components.optionsCard(
                          title: 'Git Submodules: ',
                          caption: 'Embed one repo inside another.',
                          icon: Icon(
                            Icons.circle_outlined,
                            color: Colors.amber[300],
                          ),
                          captionMaxLines: 1,
                        ),
                        Components.titledCodingCardElevated(
                          Components.titledCodingCard(
                            'GitHub CLI:\nSwitch contexts fast:',
                            '> gh repo switch user/repo  # Instantly jump between projects',
                          ),
                          Icon(
                            Icons.keyboard_outlined,
                            color: Colors.blue[900],
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
                      child: Icon(Icons.laptop, color: Colors.tealAccent),
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'Exercise: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                          minFontSize: 10,
                          maxLines: 1,
                        ),
                        AutoSizeText(
                          'Clone the ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                          minFontSize: 10,
                          maxLines: 1,
                        ),
                        GestureDetector(
                          child: AutoSizeText(
                            'TensorFlow models repo',
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                            minFontSize: 10,
                            maxLines: 1,
                          ),
                          onTap:
                              () => launchUrlString(
                                'https://github.com/tensorflow/models',
                              ),
                        ),
                        AutoSizeText(
                          ' with its submodules.',
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
                        Icons.computer_sharp,
                        color: Colors.teal[400],
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
                          'Final Project:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                          minFontSize: 10,
                          maxLines: 1,
                        ),
                        AutoSizeText(
                          'Contribute to a Real Open-Source Project:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                          minFontSize: 10,
                          maxLines: 1,
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
                                      Icons.looks_one_rounded,
                                      color: Colors.tealAccent,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 20,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        'Find a "good first issue" on ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        minFontSize: 10,
                                        maxLines: 1,
                                      ),
                                      GestureDetector(
                                        child: AutoSizeText(
                                          'up-for-grabs.net',
                                          style: TextStyle(
                                            color: Colors.lightBlue,
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          minFontSize: 10,
                                          maxLines: 1,
                                        ),
                                        onTap:
                                            () => launchUrlString(
                                              'https://up-for-grabs.net/',
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Components.optionsCard(
                          title: '',
                          caption:
                              'Follow the project’s guidelines to submit a PR.',
                          icon: Icon(
                            Icons.looks_two_rounded,
                            color: Colors.tealAccent,
                          ),
                          captionMaxLines: 1,
                        ),
                        Components.optionsCard(
                          title: '',
                          caption: 'Share your merged PR on LinkedIn!',
                          icon: Icon(
                            Icons.looks_3_rounded,
                            color: Colors.tealAccent,
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
                                            // TODO: change elementAt(number)
                                            (_currentStep + 1) /
                                            GitCoursePage.lessons.values
                                                .elementAt(3)['content']!
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
                                            // TODO: change elementAt(number)
                                            GitCoursePage.lessons.values
                                                .elementAt(3)['content']!
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
                                                // TODO: change elementAt(number)
                                                AutoSizeText(
                                                  GitCoursePage.lessons.values
                                                      .elementAt(
                                                        3,
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
