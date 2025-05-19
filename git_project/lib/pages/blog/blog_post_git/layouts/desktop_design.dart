import 'package:auto_size_text/auto_size_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:git_project/appbar/appbar.dart';
import 'package:git_project/components.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyDesktopLayout extends StatefulWidget {
  const MyDesktopLayout({super.key});

  @override
  State<MyDesktopLayout> createState() => _MyDesktopLayoutState();
}

class _MyDesktopLayoutState extends State<MyDesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          WebsiteAppBar(appBarBackgroundColor: Colors.transparent),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
            sliver: SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                DottedBorder(
                  borderType: BorderType.RRect,
                  color: Colors.black,
                  radius: Radius.circular(20),
                  dashPattern: [8, 5, 8, 5],
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: Colors.amber[50],
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: SingleChildScrollView(
                          child: Column(
                            spacing: 20,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AutoSizeText(
                                '\nGit and GitHub 101: The Essential Guide for Beginners',
                                maxLines: 4,
                                minFontSize: 30,
                                style: TextStyle(
                                  fontSize: 60,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              AutoSizeText(
                                'Learn version control, master key commands, and unlock free developer tools!',
                                minFontSize: 20,
                                maxLines: 5,
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.black.withValues(alpha: 0.7),
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.italic,
                                ),
                                textAlign: TextAlign.center,
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
                                            Icons.question_mark,
                                            color: Colors.amber,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 20,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          spacing: 20,
                                          children: [
                                            AutoSizeText(
                                              'What is Version Control?',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 35,
                                                fontWeight: FontWeight.w600,
                                              ),
                                              minFontSize: 10,
                                              maxLines: 1,
                                            ),
                                            Components.optionsCard(
                                              title:
                                                  'Imagine working on a group project where everyone can edit the same document without chaos. That’s version control! Git tracks every change to your code, letting you:',
                                              caption: '',
                                              icon: Icon(
                                                Icons.format_quote,
                                                color: Colors.blue,
                                              ),
                                              captionMaxLines: 3,
                                            ),
                                            Components.optionsCard(
                                              title: '',
                                              caption:
                                                  'Rewind to older versions',
                                              icon: Icon(
                                                Icons.check_circle_outline,
                                                color: Colors.lightBlue,
                                              ),
                                              captionMaxLines: 2,
                                            ),
                                            Components.optionsCard(
                                              title: '',
                                              caption:
                                                  'Collaborate without conflicts',
                                              icon: Icon(
                                                Icons.check_circle_outline,
                                                color: Colors.lightBlue,
                                              ),
                                              captionMaxLines: 2,
                                            ),
                                            Components.optionsCard(
                                              title: '',
                                              caption:
                                                  'Experiment risk-free with new ideas”',
                                              icon: Icon(
                                                Icons.check_circle_outline,
                                                color: Colors.lightBlue,
                                              ),
                                              captionMaxLines: 2,
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
                                            Icons.install_desktop,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 20,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          spacing: 20,
                                          children: [
                                            AutoSizeText(
                                              'Install & Configure Git',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 35,
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
                                                padding: const EdgeInsets.all(
                                                  10,
                                                ),
                                                child: Row(
                                                  spacing: 20,
                                                  textBaseline:
                                                      TextBaseline.ideographic,
                                                  children: <Widget>[
                                                    Expanded(
                                                      child: FittedBox(
                                                        child: Icon(
                                                          Icons.download,
                                                          color:
                                                              Colors
                                                                  .greenAccent,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 20,
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          AutoSizeText(
                                                            'Step 1: ',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 25,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                            minFontSize: 10,
                                                            maxLines: 1,
                                                          ),
                                                          AutoSizeText(
                                                            'Download Git from ',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 22,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                            minFontSize: 10,
                                                            maxLines: 1,
                                                          ),
                                                          GestureDetector(
                                                            child: AutoSizeText(
                                                              'git-scm.com',
                                                              style: TextStyle(
                                                                color:
                                                                    Colors
                                                                        .lightBlue,
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                              minFontSize: 10,
                                                              maxLines: 1,
                                                            ),
                                                            onTap:
                                                                () => launchUrlString(
                                                                  'https://git-scm.com/',
                                                                ),
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
                                                'Step 2: Set up your identity:',
                                                '> git config --global user.name "Your Name"\n> git config --global user.email "your@email.com" ',
                                              ),
                                              Icon(
                                                Icons.code,
                                                color: Colors.blue,
                                              ),
                                            ),
                                            Components.optionsCard(
                                              title: 'Pro Tip: ',
                                              caption:
                                                  'Use "git config --list" to verify settings.',
                                              icon: Icon(
                                                Icons.local_fire_department,
                                                color: Colors.deepOrange,
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
                                            Icons.star,
                                            color: Colors.yellowAccent,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 20,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          spacing: 20,
                                          children: [
                                            AutoSizeText(
                                              'Create Your First Repo',
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
                                                'git init',
                                                '> mkdir my-project\n> cd my-project\n> git init  # Initializes a hidden .git folder',
                                              ),
                                              Icon(
                                                Icons.code,
                                                color: Colors.blue,
                                              ),
                                            ),
                                            Components.optionsCard(
                                              title: '',
                                              caption:
                                                  'This turns any directory into a version-controlled project.',
                                              icon: Icon(
                                                Icons.circle_outlined,
                                                color: Colors.yellowAccent,
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
                                            Icons.lightbulb,
                                            color: Colors.amber,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 20,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          spacing: 20,
                                          children: [
                                            AutoSizeText(
                                              'Git Workflow: Add, Commit',
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
                                                'git add: Stages changes for commit.',
                                                '> git add file.txt     # Add specific file\n> git add .           # Add all changes  ',
                                              ),
                                              Icon(
                                                Icons.code,
                                                color: Colors.blue,
                                              ),
                                            ),
                                            Components.titledCodingCardElevated(
                                              Components.titledCodingCard(
                                                'git commit: Saves a snapshot.',
                                                '> git commit -m "Add login page"  # -m adds a message            # Add all changes  ',
                                              ),
                                              Icon(
                                                Icons.code,
                                                color: Colors.blue,
                                              ),
                                            ),
                                            Components.optionsCard(
                                              title: 'Pro Tip:\n',
                                              caption:
                                                  'Commit messages should be concise and descriptive (e.g., “Fix button color bug”).',
                                              icon: Icon(
                                                Icons.local_fire_department,
                                                color: Colors.deepOrange,
                                              ),
                                              captionMaxLines: 2,
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
                                            Icons.lightbulb,
                                            color: Colors.amber,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 20,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          spacing: 20,
                                          children: [
                                            AutoSizeText(
                                              'View Commit History',
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
                                                'git log',
                                                '> git log --oneline    # Compact view\n> git log --graph      # Visualize branches ',
                                              ),
                                              Icon(
                                                Icons.code,
                                                color: Colors.blue,
                                              ),
                                            ),
                                            Components.titledCodingCardElevated(
                                              Components.titledCodingCard(
                                                'Example output:',
                                                '> a1b2c3d (HEAD -> main) Add login page\n> e4f5g6h Initialize project',
                                              ),
                                              Icon(
                                                Icons.code,
                                                color: Colors.blue,
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
                                            Icons.lightbulb,
                                            color: Colors.amber,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 20,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          spacing: 20,
                                          children: [
                                            AutoSizeText(
                                              'GitHub Student Developer Pack',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 35,
                                                fontWeight: FontWeight.w600,
                                              ),
                                              minFontSize: 10,
                                              maxLines: 1,
                                            ),
                                            Components.optionsCard(
                                              title:
                                                  r'Free $1000s in tools for learners:',
                                              caption: '',
                                              icon: Icon(
                                                Icons.attach_money,
                                                color: Colors.green,
                                              ),
                                              captionMaxLines: 1,
                                            ),
                                            Components.optionsCard(
                                              title: 'JetBrains IDEs: ',
                                              caption:
                                                  'Full access to PyCharm, WebStorm, etc.',
                                              icon: Icon(
                                                Icons.code,
                                                color: Colors.blue,
                                              ),
                                              captionMaxLines: 1,
                                            ),
                                            Components.optionsCard(
                                              title: 'GitHub Pro: ',
                                              caption:
                                                  'Unlimited private repos.',
                                              icon: Icon(
                                                Icons.attach_money,
                                                color: Colors.green,
                                              ),
                                              captionMaxLines: 1,
                                            ),
                                            Components.optionsCard(
                                              title: 'Microsoft Azure: ',
                                              caption: r'$100 cloud credits.',
                                              icon: Icon(
                                                Icons.attach_money,
                                                color: Colors.green,
                                              ),
                                              captionMaxLines: 1,
                                            ),
                                            Components.optionsCard(
                                              title: 'Canva Pro: ',
                                              caption:
                                                  'Design assets for portfolios.',
                                              icon: Icon(
                                                Icons.design_services,
                                                color: Colors.indigoAccent,
                                              ),
                                              captionMaxLines: 1,
                                            ),
                                            Card(
                                              elevation: 10,
                                              shadowColor: Colors.grey,
                                              color: Colors.white,
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                  10,
                                                ),
                                                child: Row(
                                                  spacing: 20,
                                                  textBaseline:
                                                      TextBaseline.ideographic,
                                                  children: <Widget>[
                                                    Expanded(
                                                      child: FittedBox(
                                                        child: Icon(
                                                          Icons.download,
                                                          color:
                                                              Colors
                                                                  .greenAccent,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 20,
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          AutoSizeText(
                                                            'How to Claim: ',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 25,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                            minFontSize: 10,
                                                            maxLines: 1,
                                                          ),
                                                          AutoSizeText(
                                                            'Verify student status at ',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 22,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                            minFontSize: 10,
                                                            maxLines: 1,
                                                          ),
                                                          GestureDetector(
                                                            child: AutoSizeText(
                                                              'education.github.com/pack',
                                                              style: TextStyle(
                                                                color:
                                                                    Colors
                                                                        .lightBlue,
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                              minFontSize: 10,
                                                              maxLines: 1,
                                                            ),
                                                            onTap:
                                                                () => launchUrlString(
                                                                  'https://education.github.com/pack',
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              AutoSizeText(
                                'Interested To Learn?',
                                maxLines: 4,
                                minFontSize: 30,
                                style: TextStyle(
                                  fontSize: 60,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Align(
                                alignment: AlignmentDirectional.center,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        WidgetStateProperty.resolveWith((
                                          Set<WidgetState> states,
                                        ) {
                                          if (states.contains(
                                            WidgetState.pressed,
                                          )) {
                                            return Colors.amber[300];
                                          }
                                          if (states.contains(
                                            WidgetState.hovered,
                                          )) {
                                            return Colors.amberAccent[400];
                                          }
                                          return Colors.amber;
                                        }),
                                    elevation: WidgetStateProperty.resolveWith((
                                      Set<WidgetState> states,
                                    ) {
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
                                    }),
                                    shadowColor: WidgetStateProperty.all(
                                      Colors.grey,
                                    ),
                                    padding: WidgetStateProperty.all(
                                      EdgeInsets.all(20),
                                    ),
                                    foregroundColor: WidgetStateProperty.all(
                                      Colors.white,
                                    ),
                                    textStyle: WidgetStateProperty.resolveWith((
                                      Set<WidgetState> states,
                                    ) {
                                      if (states.contains(
                                        WidgetState.pressed,
                                      )) {
                                        return TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        );
                                      }
                                      if (states.contains(
                                        WidgetState.hovered,
                                      )) {
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
                                    Navigator.pushNamed(context, '/git/basics');
                                  },
                                  child: AutoSizeText(
                                    'Start Learning',
                                    minFontSize: 5,
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
