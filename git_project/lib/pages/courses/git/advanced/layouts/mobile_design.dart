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
        GitCoursePage.lessons.values.elementAt(4)['content']!.length - 1) {
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
                  '${GitCoursePage.lessons.values.elementAt(4)['route']!.first}-quiz',
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
            'Rewrite History or Preserve It?',
            textAlign: TextAlign.center,
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
              'Rebase: Rewrites commit history (linear timeline).',
              '> git switch feature\n> git rebase main  # Moves feature commits on top of main',
            ),
            Icon(Icons.lightbulb, color: Colors.amber),
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Merge: Preserves history (creates merge commit).',
              '> git merge feature  # Adds a "Merge branch" commit',
            ),
            Icon(Icons.lightbulb, color: Colors.amber),
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.watch_later_outlined, color: Colors.teal[400]),
            title: 'When to Use:',
            itemsList: [
              Components.optionsCard(
                title: 'Rebase: ',
                caption: 'Solo work, clean history.',
                icon: Icon(Icons.circle_outlined, color: Colors.teal[300]),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Merge: ',
                caption: 'Teamwork, audit trails.',
                icon: Icon(Icons.circle_outlined, color: Colors.teal[300]),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Analogy:\n',
                caption:
                    '"Rebase is like editing a draft; Merge is saving all revisions."',
                icon: Icon(Icons.circle_outlined, color: Colors.teal[300]),
                captionMaxLines: 2 + 6 + 6,
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
          AutoSizeText(
            'Time Machine for Commits',
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
              '> git rebase -i HEAD~3  # Edit last 3 commits',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.double_arrow_rounded, color: Colors.amber[700]),
            title: 'Actions:',
            itemsList: [
              Components.horizontalCodingCard(
                icon: Icon(Icons.circle_outlined, color: Colors.amber[600]),
                title: 'Combine commits: ',
                codingCard: Components.codingCard('squash'),
              ),
              Components.horizontalCodingCard(
                icon: Icon(Icons.circle_outlined, color: Colors.amber[600]),
                title: 'Change messages: ',
                codingCard: Components.codingCard('reword'),
              ),
              Components.horizontalCodingCard(
                icon: Icon(Icons.circle_outlined, color: Colors.amber[600]),
                title: 'Delete commits: ',
                codingCard: Components.codingCard('drop'),
              ),
              Components.optionsCard(
                title: 'Exercise:\n',
                caption:
                    'Rewrite a typo-filled commit history into 2 clean commits.',
                icon: Icon(Icons.laptop, color: Colors.tealAccent),
                captionMaxLines: 2 + 6 + 6,
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
          AutoSizeText(
            'Save Work Without Committing',
            textAlign: TextAlign.center,
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
              'Pro Commands:',
              '> git stash -u  # Stash untracked files\n> git stash push -m "WIP: login form"  # Named stash\n> git stash list\n> git stash apply stash@{1}  # Restore specific stash ',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.optionsCard(
            title: 'Use Case: ',
            caption: 'Switch branches mid-task without messy commits.',
            icon: Icon(Icons.settings, color: Colors.indigo[900]),
            captionMaxLines: 1 + 6 + 6,
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
            'Copy-Paste for Code Changes',
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
              'Grab a commit from another branch',
              '> git cherry-pick abc123',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.watch_later_outlined, color: Colors.teal[400]),
            title: 'When ',
            itemsList: [
              Components.optionsCard(
                title: '',
                caption: 'Backport a bug fix from main to release/v1.',
                icon: Icon(Icons.circle, color: Colors.teal[300]),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Warning: ',
                caption: 'Can cause duplicates if misused!',
                icon: Icon(Icons.warning_amber, color: Colors.amber),
                captionMaxLines: 1 + 6 + 6,
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
          AutoSizeText(
            'Repos Inside Repos',
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
              'Submodule (Linked):',
              'git submodule add https://github.com/lib/library.git',
            ),
            Icon(Icons.lightbulb, color: Colors.amber),
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Subtree (Merged):',
              'git subtree add --prefix=lib https://github.com/lib/library.git main',
            ),
            Icon(Icons.lightbulb, color: Colors.amber),
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.compare_arrows, color: Colors.orange[600]),
            title: 'Key Difference:',
            itemsList: [
              Components.optionsCard(
                title: 'Submodules: ',
                caption: 'Dependencies (like Git repos).',
                icon: Icon(Icons.circle_outlined, color: Colors.orange[400]),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Subtrees: ',
                caption: 'Embedded code (no extra .git).',
                icon: Icon(Icons.circle_outlined, color: Colors.orange[400]),
                captionMaxLines: 1 + 6 + 6,
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
            'Automate Workflows',
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
              'Example (Prevent bad commits):',
              '# .git/hooks/pre-commit  \n> if grep -q "TODO" code.js; then  \n  echo "Commit blocked: Remove TODOs!"  \n  exit 1  \nfi  ',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.optionsCard(
            title: 'Use Cases: ',
            caption: 'Enforce tests, linting, or commit messages.',
            icon: Icon(Icons.keyboard, color: Colors.blueAccent[100]),
            captionMaxLines: 1 + 6 + 6,
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
            'Git’s Safety Net',
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
              'Recover Deleted Branches:',
              '> git reflog  # Find the lost commit hash\n> git switch -c feature-reborn abc123',
            ),
            Icon(Icons.lightbulb, color: Colors.amber),
          ),
          Components.optionsCard(
            title: 'Pro Tip: ',
            caption: 'Reflog expires after 90 days (default).',
            icon: Icon(Icons.local_fire_department, color: Colors.deepOrange),
            captionMaxLines: 1 + 6 + 6,
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
            'Find Bugs Like Sherlock',
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
              'Bisect Debugging',
              '> git bisect start \n> git bisect bad HEAD \n> git bisect good v1.0 \n# Test code at each step \n> git bisect reset',
            ),
            Icon(Icons.bug_report, color: Colors.red[900]),
          ),
          Components.optionsCard(
            title: 'Exercise: ',
            caption: 'Find which commit broke the login button.',
            icon: Icon(Icons.laptop, color: Colors.tealAccent),
            captionMaxLines: 1 + 6 + 6,
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
            'Multiple Folders, One Repo',
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
              'Work on feature/login and bug/fix simultaneously.',
              '> git worktree add ../login-feature feature/login\n> cd ../login-feature  # Edit files, push, then delete',
            ),
            Icon(Icons.code, color: Colors.blue),
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
            'Resolve Conflicts Like a Pro',
            minFontSize: 8,
            maxLines: 1 + 6,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.code, color: Colors.blue[600]),
            title: 'Strategies:',
            itemsList: [
              Components.titledCodingCardElevated(
                Components.titledCodingCard(
                  'Ours/Theirs:',
                  'git merge -Xours feature  # Prefer current branch’s code',
                ),
                Icon(Icons.circle_outlined, color: Colors.blue),
              ),
              Components.titledCodingCardElevated(
                Components.titledCodingCard(
                  'Rerere: Reuse recorded resolutions:',
                  'git config --global rerere.enabled true',
                ),
                Icon(Icons.circle_outlined, color: Colors.blue),
              ),
            ],
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
            'Rewrite the Past Safely',
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
              'Remove Secrets:',
              '> git filter-repo --replace-text passwords.txt',
            ),
            Icon(Icons.delete, color: Colors.red[800]),
          ),
          Components.optionsCard(
            title: 'BFG Tool: ',
            caption: 'Faster alternative for large repos.',
            icon: Icon(Icons.star, color: Colors.amber),
            captionMaxLines: 1 + 6 + 6,
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
            'Verify Your Work',
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
              'Commit Signing',
              '> git commit -S -m "Signed commit"  # Requires GPG key\n> git config --global commit.gpgsign true  # Auto-sign',
            ),
            Icon(Icons.lightbulb, color: Colors.amber),
          ),
          Components.optionsCard(
            title: 'Why:\n',
            caption: 'Prevent tampering (required for Linux kernel).',
            icon: Icon(Icons.question_mark_rounded, color: Colors.amber),
            captionMaxLines: 2 + 6 + 6,
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
            'How Git Actually Works',
            minFontSize: 8,
            maxLines: 1 + 6,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.file_copy_sharp, color: Colors.amberAccent[400]),
            title: 'Key Files:',
            itemsList: [
              Components.horizontalCodingCard(
                icon: Icon(
                  Icons.circle_rounded,
                  color: Colors.amberAccent[200],
                ),
                title: 'Commits, trees, blobs: ',
                codingCard: Components.codingCard('.git/objects'),
              ),
              Components.horizontalCodingCard(
                icon: Icon(
                  Icons.circle_rounded,
                  color: Colors.amberAccent[200],
                ),
                title: 'Branches/tags: ',
                codingCard: Components.codingCard('.git/refs'),
              ),

              Components.optionsCard(
                title: 'Exercise:\n',
                caption: 'Create a commit manually using plumbing commands.',
                icon: Icon(Icons.laptop, color: Colors.tealAccent),
                captionMaxLines: 2 + 6 + 6,
              ),
            ],
          ),
        ],
      );
    }
    if (index == 13) {
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            'Share Changes via Email',
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
              'Create/Apply Patches:',
              '> git format-patch HEAD~2  # Generate .patch files\n> git am *.patch  # Apply them',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.optionsCard(
            title: 'Use Case: ',
            caption: 'Code reviews without GitHub.',
            icon: Icon(
              Icons.workspaces_rounded,
              color: Colors.indigoAccent[700],
            ),
            captionMaxLines: 1 + 6 + 6,
          ),
        ],
      );
    }
    if (index == 14) {
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            'See What Changed',
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
              'Pro Commands:',
              '> git log --graph --oneline  # Visualize branches\n> git diff --word-diff  # Highlight word-level changes\n> git blame file.txt  # See who changed each line ',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
        ],
      );
    }
    if (index == 15) {
      return Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            'Enterprise-Grade Collaboration',
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
            icon: Icon(Icons.lan_outlined, color: Colors.orange[900]),
            title: 'Branches:',
            itemsList: [
              Components.horizontalCodingCard(
                icon: Icon(Icons.circle_outlined, color: Colors.orange[700]),
                title: 'Production code: ',
                codingCard: Components.codingCard('main'),
              ),
              Components.horizontalCodingCard(
                icon: Icon(Icons.circle_outlined, color: Colors.orange[700]),
                title: 'Integration branch: ',
                codingCard: Components.codingCard('develop'),
              ),
              Components.horizontalCodingCard(
                icon: Icon(Icons.circle_outlined, color: Colors.orange[700]),
                title: 'Short-lived: ',
                codingCard: Components.codingCard(
                  '[feature/*], [release/*], [hotfix/*]',
                ),
              ),

              Components.titledCodingCardElevated(
                Components.titledCodingCard(
                  'Tools:',
                  '> git flow init  # Requires git-flow extension',
                ),
                Icon(Icons.circle_outlined, color: Colors.orange[700]),
              ),
            ],
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.laptop, color: Colors.tealAccent[700]),
            title: 'Final Project:',
            itemsList: [
              AutoSizeText(
                'Contribute to Linux Kernel:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
                minFontSize: 10,
                maxLines: 1 + 6,
              ),
              Components.optionsCard(
                title: '',
                caption: 'Clone the repo with submodules.',
                icon: Icon(
                  Icons.looks_one_rounded,
                  color: Colors.tealAccent[400],
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: '',
                caption: 'Fix a typo in documentation.',
                icon: Icon(
                  Icons.looks_two_rounded,
                  color: Colors.tealAccent[400],
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: '',
                caption: 'Sign the commit with GPG.',
                icon: Icon(
                  Icons.looks_3_rounded,
                  color: Colors.tealAccent[400],
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: '',
                caption: 'Generate a patch and email it.',
                icon: Icon(
                  Icons.looks_4_rounded,
                  color: Colors.tealAccent[400],
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
      body: body(),
    );
  }

  Padding body() {
    return Padding(
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
                              .elementAt(4)['content']!
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
                              .elementAt(4)['content']!
                              .length,
                      itemBuilder: (BuildContext context, int index) {
                        return SingleChildScrollView(
                          child: Column(
                            spacing: 10,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              AutoSizeText(
                                GitCoursePage.lessons.values.elementAt(
                                  4,
                                )['content']![index],
                                textAlign: TextAlign.center,
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
    );
  }
}
