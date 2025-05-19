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
        GitCoursePage.lessons.values.elementAt(5)['content']!.length - 1) {
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
                  '${GitCoursePage.lessons.values.elementAt(5)['route']!.first}-quiz',
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
            'Discard Chaos in Seconds',
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
              'Command:',
              '> git restore file.txt  # Discard changes to a file  \n> git restore .        # Undo all unstaged changes ',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),

          Components.optionsCard(
            title: 'Analogy:\n',
            caption:
                '"Like erasing doodles in a notebook before they’re inked permanently."',
            icon: Icon(Icons.question_answer, color: Colors.lightGreen),
            captionMaxLines: 2 + 6 + 6,
          ),
          Components.optionsCard(
            title: 'Pro Tip:\n',
            caption: 'Use git status first to confirm what’s unstaged.',
            icon: Icon(Icons.local_fire_department, color: Colors.deepOrange),
            captionMaxLines: 2 + 6 + 6,
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
            'Remove Files from the "Ready to Commit" Area',
            minFontSize: 8,
            maxLines: 1 + 6,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.titledCodingCardElevated(
            Components.titledCodingCard(
              'Command:',
              'git restore --staged file.txt  # Remove from staging',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.optionsCard(
            title: 'Scenario:\n',
            caption:
                'You accidentally staged secret.conf and want to un-add it.',
            icon: Icon(Icons.work, color: Colors.blueGrey[600]),
            captionMaxLines: 2 + 6 + 6,
          ),
          Components.optionsCard(
            title: 'Exercise:\n',
            caption: 'Stage a file, then unstage it without losing changes.',
            icon: Icon(Icons.laptop, color: Colors.tealAccent),
            captionMaxLines: 2 + 6 + 6,
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
            'Fix Typos Like a Time Traveler',
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
              '> git commit --amend -m "Better message"  # Edit commit message\n> git add missed-file.txt && git commit --amend --no-edit  # Add forgotten files',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.optionsCard(
            title: 'Warning:\n',
            caption:
                'Never amend public commits (already pushed). Use this only for local fixes!',
            icon: Icon(Icons.warning_amber, color: Colors.amber),
            captionMaxLines: 2 + 6 + 6,
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
            'Rewind Your Project’s History',
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
            title: 'Commands: ',
            itemsList: [
              Components.titledCodingCardElevated(
                Components.titledCodingCard(
                  'Soft Reset (keep changes staged):',
                  '> git reset --soft HEAD~1',
                ),
                Icon(Icons.circle_outlined, color: Colors.blue[400]),
              ),
              Components.titledCodingCardElevated(
                Components.titledCodingCard(
                  'Hard Reset (destroy changes):',
                  '> git reset --hard abc123  # Jump to commit abc123 ',
                ),
                Icon(Icons.circle_outlined, color: Colors.blue[400]),
              ),
            ],
          ),
          Components.topicTitledCard(
            icon: Icon(
              Icons.watch_later_outlined,
              color: Colors.amberAccent[700],
            ),
            title: 'When to Use: ',
            itemsList: [
              Components.optionsCard(
                title: 'Soft: ',
                caption: 'Redo a commit with extra changes.',
                icon: Icon(Icons.circle_outlined, color: Colors.amberAccent),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Hard: ',
                caption: '"Burn it all and start over."',
                icon: Icon(Icons.circle_outlined, color: Colors.amberAccent),
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
            'Undo Public Changes Safely',
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
              'Command:',
              '> git revert abc123  # Creates a new commit that reverses abc123',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.optionsCard(
            title: 'Use Case: ',
            caption:
                'Roll back a buggy commit on main without rewriting history.',
            icon: Icon(Icons.keyboard, color: Colors.blue[900]),
            captionMaxLines: 1 + 6 + 6,
          ),
          Components.optionsCard(
            title: 'Pro Tip: ',
            caption: 'Resolve conflicts during revert like a merge.',
            icon: Icon(Icons.local_fire_department, color: Colors.deepOrange),
            captionMaxLines: 1 + 6 + 6,
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
            'Unlink Branches Cleanly',
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
              'Command:',
              '> git reset --hard HEAD~1  # If merge wasn’t pushed\n> git revert -m 1 MERGE_COMMIT_HASH  # For pushed merges',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.flag, color: Colors.amber[900]),
            title: 'Key Flag:',
            itemsList: [
              Components.optionsCard(
                title: '"-m 1": ',
                caption:
                    'specifies which parent commit to keep (1 = original branch).',
                icon: Icon(Icons.circle_outlined, color: Colors.amber[700]),
                captionMaxLines: 1 + 6 + 6,
              ),
            ],
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
            'Git’s "Undo Delete" for Code',
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
              Components.titledCodingCardElevated(
                Components.titledCodingCard(
                  'Find the lost commit hash:',
                  '> git reflog  # Time-travel log',
                ),
                Icon(Icons.looks_one_rounded, color: Colors.lightBlue),
              ),
              Components.titledCodingCardElevated(
                Components.titledCodingCard(
                  'Restore it:',
                  '> git switch -c rescued-commit abc123',
                ),
                Icon(Icons.looks_two_rounded, color: Colors.lightBlue),
              ),
            ],
          ),
          Components.optionsCard(
            title: 'Exercise:\n',
            caption: 'Intentionally reset a commit, then recover it.',
            captionMaxLines: 2 + 6 + 6,
            icon: Icon(Icons.laptop, color: Colors.tealAccent),
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
            'Delete Digital Clutter',
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
              'Command:',
              '> git clean -df  # Remove untracked files/directories',
            ),
            Icon(Icons.code, color: Colors.blue),
          ),
          Components.optionsCard(
            title: 'Safety First:\n',
            caption: 'Run "git clean -n" first for a dry run!',
            icon: Icon(Icons.security, color: Colors.lightBlueAccent[700]),
            captionMaxLines: 2 + 6 + 6,
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
            'Recover from a Botched History Rewrite',
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
              Components.horizontalCodingCard(
                icon: Icon(Icons.looks_one_rounded, color: Colors.blue[400]),
                title: 'Find the pre-rebase state in ',
                codingCard: Components.codingCard('git reflog'),
              ),
              Components.titledCodingCardElevated(
                Components.titledCodingCard(
                  'Reset:',
                  '> git reset --hard HEAD@{5}',
                ),
                Icon(Icons.looks_two_rounded, color: Colors.blue[400]),
              ),
            ],
          ),
          Components.optionsCard(
            title: 'Why:\n',
            caption:
                'Rebasing rewrites history, so old commits are orphaned but recoverable.',
            icon: Icon(Icons.question_mark_rounded, color: Colors.amber),
            captionMaxLines: 2 + 6 + 6,
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
            'Retract Public Commits (Carefully!)',
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
              'Command:',
              '> git reset --hard HEAD~3  # Local undo\n> git push --force origin main  # Overwrite remote',
            ),
            Icon(Icons.lightbulb, color: Colors.amber),
          ),
          Components.optionsCard(
            title: 'Nuclear Warning:\n',
            caption: 'Never force-push to shared branches (disrupts teamwork).',
            icon: Icon(Icons.warning, color: Colors.redAccent[700]),
            captionMaxLines: 2 + 6 + 6,
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
            'Surgically Remove Bad Commits',
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
              '> git rebase -i HEAD~5  # Drop or edit commits',
            ),
            Icon(Icons.workspaces, color: Colors.blue[900]),
          ),
          Components.optionsCard(
            title: 'Use Case:\n',
            caption: 'Remove a secret leaked in an old commit.',
            icon: Icon(Icons.work, color: Colors.amber),
            captionMaxLines: 2 + 6 + 6,
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
            'Handle Cryptographic Signatures',
            minFontSize: 8,
            maxLines: 1 + 6,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.rule, color: Colors.green),
            title: 'Rule:',
            itemsList: [
              Components.optionsCard(
                title: 'Never amend/rebase signed commits',
                caption: ' (invalidates GPG signature).',
                icon: Icon(
                  Icons.warning_amber_rounded,
                  color: Colors.lightGreen[600],
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Only use',
                caption: ' "git revert" to undo them publicly.',
                icon: Icon(
                  Icons.warning_amber_rounded,
                  color: Colors.lightGreen[600],
                ),
                captionMaxLines: 1 + 6 + 6,
              ),
            ],
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
            'Undo Like a Pro',
            minFontSize: 8,
            maxLines: 1 + 6,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.8),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.local_fire_department, color: Colors.deepOrange),
            title: 'Tips:',
            itemsList: [
              Components.optionsCard(
                title: 'Public History: ',
                caption: 'Prefer revert over reset.',
                icon: Icon(Icons.looks_one_rounded, color: Colors.orange[600]),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Public History: ',
                caption: 'Prefer revert over reset.',
                icon: Icon(Icons.looks_two_rounded, color: Colors.orange[600]),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Teamwork: ',
                caption: 'Warn collaborators before force-pushing.',
                icon: Icon(Icons.looks_3_rounded, color: Colors.orange[600]),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: 'Backup: ',
                caption: '"git reflog" is your 30-day undo insurance.',
                icon: Icon(Icons.looks_4_rounded, color: Colors.orange[600]),
                captionMaxLines: 1 + 6 + 6,
              ),
            ],
          ),
          Components.topicTitledCard(
            icon: Icon(Icons.computer_sharp, color: Colors.teal[400]),
            title: 'Final Project:',
            itemsList: [
              AutoSizeText(
                'Rescue a "Lost" Repository:',
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
                caption:
                    'Intentionally break a repo (merge conflicts, lost commits).',
                icon: Icon(Icons.looks_one_rounded, color: Colors.tealAccent),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: '',
                caption: 'Use "reflog", "reset", and "revert" to restore it.',
                icon: Icon(Icons.looks_two_rounded, color: Colors.tealAccent),
                captionMaxLines: 1 + 6 + 6,
              ),
              Components.optionsCard(
                title: '',
                caption:
                    'Write a post-mortem report explaining each undo step.',
                icon: Icon(Icons.looks_3_rounded, color: Colors.tealAccent),
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
                                .elementAt(5)['content']!
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
                                .elementAt(5)['content']!
                                .length,
                        itemBuilder: (BuildContext context, int index) {
                          return SingleChildScrollView(
                            child: Column(
                              spacing: 10,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                AutoSizeText(
                                  GitCoursePage.lessons.values.elementAt(
                                    5,
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
