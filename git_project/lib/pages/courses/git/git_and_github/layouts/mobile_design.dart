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
    } else if (_currentStep ==
        GitCoursePage.lessons.values.elementAt(2)['content']!.length - 1) {
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
                  '${GitCoursePage.lessons.values.elementAt(2)['route']!.first}-quiz',
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
          AutoSizeText(
            'The Social Network for Code',
            minFontSize: 8,
            maxLines: 1 + 6,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.optionsCard(
            title: 'GitHub vs. Git: ',
            caption:
                '\n   - Git: Local version control.\n   - GitHub: Cloud platform to host Git repos, collaborate, and automate workflows.',
            icon: Icon(Icons.compare_arrows, color: Colors.pink),
            captionMaxLines: 3 + 6 + 6,
          ),
          Components.optionsCard(
            title: 'Key Features: ',
            caption:
                'Pull requests, Issues, Actions, Pages, and 90 million+ developers.',
            icon: Icon(Icons.star_rate_rounded, color: Colors.yellowAccent),
            captionMaxLines: 1 + 6 + 6,
          ),
          Components.optionsCard(
            title: 'Analogy: ',
            caption:
                '"GitHub is like Instagram for coders – share projects, collaborate, and showcase your work."',
            icon: Icon(Icons.chrome_reader_mode, color: Colors.cyan),
            captionMaxLines: 1 + 6 + 6,
          ),
          Components.hyperLinkCard(
            icon: Icon(Icons.web, color: Colors.blue, size: 32),
            link: 'https://github.com/microsoft/vscode',
            title: 'Take a look at VS Code GitHub repo',
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
            'Connect Local to Cloud',
            textAlign: TextAlign.center,
            minFontSize: 8,
            maxLines: 1 + 6,
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
              padding: const EdgeInsets.all(10.0),
              child: Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    // spacing: 20,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Icon(
                          Icons.verified_rounded,
                          color: Colors.lightBlue,
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: AutoSizeText(
                          'Steps:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  Components.titledCodingCard(
                    '1. Create SSH Key:',
                    '> ssh-keygen -t ed25519 -C "your@email.com"\n> cat ~/.ssh/id_ed25519.pub',
                  ),
                  AutoSizeText.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '2. Add Key to GitHub: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: '\nSettings → SSH and GPG Keys → New SSH Key.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    minFontSize: 10,
                    maxLines: 2 + 6,
                  ),

                  Components.titledCodingCard(
                    '3. Verify Connection:',
                    '> ssh -T git@github.com\n# Success: "Hi username! You’ve successfully authenticated..."',
                  ),
                ],
              ),
            ),
          ),
          Components.optionsCard(
            title: 'Common Errors: ',
            caption: 'Permission denied?\nRun "chmod 600 ~/.ssh/id_ed25519".',
            icon: Icon(Icons.error, color: Colors.red),
            captionMaxLines: 1 + 6 + 6,
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
            'Copy Code in Seconds',
            minFontSize: 8,
            maxLines: 1 + 6,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Commands:',
              '> git clone https://github.com/user/repo.git  # HTTPS\n> git clone git@github.com:user/repo.git     # SSH (faster + secure)',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.optionsCard(
            title: 'Clone: ',
            caption: 'Copy a repo to your machine.',
            icon: Icon(Icons.lightbulb, color: Colors.yellowAccent),
            captionMaxLines: 1 + 6 + 6,
          ),
          Components.optionsCard(
            title: 'Fork: ',
            caption:
                'Create your copy of someone else’s repo (for contributing).',
            icon: Icon(Icons.lightbulb, color: Colors.yellowAccent),
            captionMaxLines: 1 + 6 + 6,
          ),
          Components.titledHyperLink(
            icon: Icon(Icons.laptop, color: Colors.tealAccent),
            link: 'https://github.com/facebook/react',
            linkText: 'React repo',
            title: 'Exercise: ',
            text1: 'Clone the ',
            text2: ' and explore its history',
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
            'Sync Code Like a Pro',
            minFontSize: 8,
            maxLines: 1 + 6,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Workflow:',
              '> git push origin main    # Send local commits to GitHub\n> git pull origin main    # Fetch remote changes + merge',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Card(
            elevation: 10,
            shadowColor: Colors.grey,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    // spacing: 20,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Icon(Icons.flag, color: Colors.orange),
                      ),
                      Expanded(
                        flex: 10,
                        child: AutoSizeText(
                          'Flags: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                          minFontSize: 10,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    runSpacing: 10,
                    // spacing: 10,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        '"-u" Set upstream branch:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                        minFontSize: 10,
                        maxLines: 2,
                      ),
                      Components.codingCard('git push -u origin main'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Components.optionsCard(
            title: 'Pro Tip: ',
            caption: 'Always "pull" before "push" to avoid conflicts!',
            icon: Icon(
              Icons.local_fire_department_sharp,
              color: Colors.deepOrange,
            ),
            captionMaxLines: 1 + 6 + 6,
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
            'Propose Changes Like a Collaborator',
            textAlign: TextAlign.center,
            minFontSize: 8,
            maxLines: 1 + 6,
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
              padding: const EdgeInsets.all(10.0),
              child: Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    // spacing: 20,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Icon(
                          Icons.lightbulb,
                          color: Colors.yellowAccent,
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: AutoSizeText(
                          'Steps:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  Components.titledCodingCard(
                    '1. Create SSH Key:',
                    '> ssh-keygen -t ed25519 -C "your@email.com"\n> cat ~/.ssh/id_ed25519.pub',
                  ),
                  AutoSizeText.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '2. Add Key to GitHub: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: '\nSettings → SSH and GPG Keys → New SSH Key.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    minFontSize: 10,
                    maxLines: 2 + 6,
                  ),

                  Components.titledCodingCard(
                    '3. Verify Connection:',
                    '> ssh -T git@github.com\n# Success: "Hi username! You’ve successfully authenticated..."',
                  ),
                ],
              ),
            ),
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.lightbulb, color: Colors.yellowAccent),
            title: 'Steps:',
            itemsList: [
              Components.titledHyperLink(
                title: '',
                text1: 'Fork a repo (e.g., ',
                linkText: 'First Contributions',
                link:
                    'https://github.com/firstcontributions/first-contributions',
                text2: ').',
                icon: Icon(Icons.looks_one_rounded, color: Colors.cyan),
              ),
              Components.optionsCard(
                title: '',
                caption: 'Clone your fork, create a branch, make changes.',
                icon: Icon(Icons.looks_two_rounded, color: Colors.cyan),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: '',
                caption: 'On GitHub: New Pull Request → Compare across forks.',
                icon: Icon(Icons.looks_3_rounded, color: Colors.cyan),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: '',
                caption: 'Add a title/description and tag reviewers.',
                icon: Icon(Icons.looks_4_rounded, color: Colors.cyan),
                captionMaxLines: 1 + 6 + 6,
              ),
            ],
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.local_fire_department, color: Colors.deepOrange),
            title: 'Best Practices:',
            itemsList: [
              Components.optionsCard(
                title: '',
                caption: r'Link PRs to Issues (e.g., "Closes #123").',
                icon: Icon(Icons.looks_one_rounded, color: Colors.amber),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.titledHyperLink(
                title: '',
                text1: 'Use ',
                linkText: 'Conventional Commits',
                link: 'https://www.conventionalcommits.org/',
                text2: ' for clarity.',
                icon: Icon(Icons.looks_two_rounded, color: Colors.amber),
              ),
            ],
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
            'Join Open-Source Communities',
            textAlign: TextAlign.center,
            minFontSize: 8,
            maxLines: 1 + 6,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.code, color: Colors.blue),
            title: 'Workflow:',
            itemsList: [
              Components.optionsCard(
                title: 'Fork: ',
                caption: 'Click "Fork" on any GitHub repo.',
                icon: Icon(Icons.looks_one_rounded, color: Colors.lightBlue),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.horizontalCodingCard(
                icon: Icon(Icons.looks_two_rounded, color: Colors.lightBlue),
                codingCard: Components.codingCard('git clone your-fork-url'),
                title: 'Clone:',
              ),
              Components.horizontalCodingCard(
                icon: Icon(Icons.looks_3_rounded, color: Colors.lightBlue),
                codingCard: Components.codingCard('git switch -c fix-typo'),
                title: 'Branch:',
              ),
              Components.titledCodingCardElevated(
                Components.titledCodingCard(
                  'Commit & Push:',
                  '> git commit -m "docs: Fix typo in README"\n> git push origin fix-typo',
                ),
                Icon(Icons.looks_4_rounded, color: Colors.lightBlue),
              ),
              Components.optionsCard(
                title: 'Open PR: ',
                caption: 'GitHub will prompt you after pushing.',
                icon: Icon(Icons.looks_5_rounded, color: Colors.lightBlue),
                captionMaxLines: 1 + 6 + 6,
              ),
            ],
          ),
          Components.titledHyperLink(
            title: 'Exercise: ',
            icon: Icon(Icons.laptop, color: Colors.tealAccent),
            linkText: 'this practice repo',
            text1: 'Fix a typo in ',
            link: 'https://github.com/octocat/Spoon-Knife',
            text2: '',
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
            'Track Bugs, Plan Features',
            minFontSize: 8,
            maxLines: 1 + 6,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.optionsCard(
            title: 'Actions:',
            caption:
                '\n- Create Issue: Describe the problem, add labels ("bug", "enhancement").\n- Assign: Tag team members.\n- Templates: Use ".github/ISSUE_TEMPLATE.md" for consistency.',
            icon: Icon(Icons.code, color: Colors.blue),
            captionMaxLines: 4 + 6 + 6,
          ),

          Components.optionsCard(
            title: 'Automation: ',
            caption: 'Link PRs to auto-close issues: "Fixes #45".',
            captionMaxLines: 1 + 6 + 6,
            icon: Icon(Icons.loop, color: Colors.greenAccent),
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
            'Protect Your Main Branch',
            minFontSize: 8,
            maxLines: 1 + 6,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.code, color: Colors.blue),
            title: 'Settings:',
            itemsList: [
              Components.optionsCard(
                title: 'Protected Branches:\n',
                caption:
                    'Require PR reviews, status checks, and restrict force pushes.',
                icon: Icon(Icons.looks_one_rounded, color: Colors.lightBlue),
                captionMaxLines: 2 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Branch Rules:\n',
                caption: 'Enforce naming (e.g., "feature/*", "fix/*").',
                icon: Icon(Icons.looks_two_rounded, color: Colors.lightBlue),
                captionMaxLines: 2 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Why: ',
                caption: 'Prevents accidental breaks to production code.',
                icon: Icon(Icons.question_mark_rounded, color: Colors.amber),
                captionMaxLines: 1 + 6 + 6,
              ),
            ],
          ),
        ],
      );
    }
    if (index == 8) {
      // TODO 9
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            'Automate Everything',
            minFontSize: 8,
            maxLines: 1 + 6,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Example Workflow (Save as .github/workflows/ci.yml):',
              'name: CI\non: [push, pull_request]\njobs:\n   test:\n     runs-on: ubuntu-latest\n     steps:  \n        - uses: actions/checkout@v4  \n        - run: npm install && npm test  ',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.optionsCard(
            title: 'Use Cases: ',
            caption: 'Run tests, deploy sites, send notifications.',
            icon: Icon(Icons.laptop, color: Colors.tealAccent),
            captionMaxLines: 1 + 6 + 6,
          ),
        ],
      );
    }
    if (index == 9) {
      // TODO 9
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            'Turn Repos into Websites',
            minFontSize: 8,
            maxLines: 1 + 6,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.code, color: Colors.blue),
            title: 'Steps:',
            itemsList: [
              Components.optionsCard(
                title: '',
                caption:
                    'Enable in Repo Settings → Pages → main branch → /root.',
                icon: Icon(Icons.looks_one_rounded, color: Colors.lightBlue),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: '',
                caption: 'Add index.html.',
                icon: Icon(Icons.looks_two_rounded, color: Colors.lightBlue),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.horizontalCodingCard(
                icon: Icon(
                  Icons.local_fire_department,
                  color: Colors.deepOrange,
                ),
                title: 'Tip: Visit ',
                codingCard: Components.codingCard(
                  'https://username.github.io/repo-name.',
                ),
              ),
              Components.titledHyperLink(
                title: 'Pro Tip: ',
                text1: 'Use ',
                linkText: 'Jekyll',
                link: 'https://jekyllrb.com/',
                text2: ' for blogs.',
                icon: Icon(
                  Icons.local_fire_department,
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
        ],
      );
    }
    if (index == 10) {
      // TODO 9
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            'Guard Your Code',
            minFontSize: 8,
            maxLines: 1 + 6,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.privacy_tip_rounded, color: Colors.blueAccent),
            title: 'Must-Do’s:',
            itemsList: [
              Components.optionsCard(
                title: '2FA: ',
                caption: 'Enable in Settings → Security.',
                icon: Icon(Icons.looks_one_rounded, color: Colors.lightBlue),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Code Scanning: ',
                caption: 'GitHub Advanced Security (find vulnerabilities).',
                icon: Icon(Icons.looks_two_rounded, color: Colors.lightBlue),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Dependabot: ',
                caption: 'Auto-update dependencies.',
                icon: Icon(Icons.looks_3_rounded, color: Colors.lightBlue),
                captionMaxLines: 1 + 6 + 6,
              ),
            ],
          ),
        ],
      );
    }
    if (index == 11) {
      // TODO 9
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            'Command-Line Superpowers',
            minFontSize: 8,
            maxLines: 1 + 6,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Commands:',
              '> gh repo clone user/repo          # Clone  \n> gh issue create                  # Create issue  \n> gh pr create --web               # Open PR in browser  \n> gh workflow run ci.yml           # Trigger Actions  ',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Install:',
              '> brew install gh  # macOS  \n> sudo apt install gh  # Debian/Ubuntu  ',
            ),
            Icon(Icons.install_desktop, color: Colors.cyan),
          ),
        ],
      );
    }
    if (index == 12) {
      // TODO 9
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            'Code Like a Pro',
            minFontSize: 8,
            maxLines: 1 + 6,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.checklist, color: Colors.orangeAccent),
            title: 'Checklist:',
            itemsList: [
              Components.optionsCard(
                title: 'README.md: ',
                caption: 'Explain your project, add badges.',
                icon: Icon(Icons.looks_one_rounded, color: Colors.orangeAccent),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'LICENSE: ',
                caption: 'MIT, GPL, or Apache.',
                icon: Icon(Icons.looks_two_rounded, color: Colors.orangeAccent),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: '.gitignore: ',
                caption: 'Exclude secrets, binaries.',
                icon: Icon(Icons.looks_3_rounded, color: Colors.orangeAccent),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Code Owners: ',
                caption: 'Assign reviewers for specific files.',
                icon: Icon(Icons.looks_4_rounded, color: Colors.orangeAccent),
                captionMaxLines: 1 + 6 + 6,
              ),
            ],
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.laptop, color: Colors.tealAccent),
            title: 'Build a Site with GitHub Pages:',
            itemsList: [
              Components.horizontalCodingCard(
                icon: Icon(
                  Icons.looks_one_rounded,
                  color: Colors.lightBlueAccent,
                ),
                title: 'Create a repo ',
                codingCard: Components.codingCard('<username>.github.io'),
              ),

              Components.optionsCard(
                title: 'Add HTML/CSS/JS files.',
                caption: '',
                icon: Icon(
                  Icons.looks_two_rounded,
                  color: Colors.lightBlueAccent,
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Enable GitHub Pages.',
                caption: '',
                icon: Icon(
                  Icons.looks_3_rounded,
                  color: Colors.lightBlueAccent,
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Submit a PR to add a new feature (e.g., dark mode).',
                caption: '',
                icon: Icon(
                  Icons.looks_4_rounded,
                  color: Colors.lightBlueAccent,
                ),
                captionMaxLines: 1 + 6 + 6,
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
                        value:
                            (_currentStep + 1) /
                            GitCoursePage.lessons.values
                                .elementAt(2)['content']!
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
                                .elementAt(2)['content']!
                                .length,
                        itemBuilder: (BuildContext context, int index) {
                          return SingleChildScrollView(
                            child: Column(
                              spacing: 10,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                AutoSizeText(
                                  GitCoursePage.lessons.values.elementAt(
                                    2,
                                  )['content']![index],
                                  minFontSize: 15,
                                  maxLines: 1 + 6,
                                  textAlign: TextAlign.center,
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
