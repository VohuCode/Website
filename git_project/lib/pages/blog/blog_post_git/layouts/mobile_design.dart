import 'package:animated_background/animated_background.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:git_project/appbar/appbar.dart';
import 'package:git_project/components.dart';
import 'package:git_project/drawer/mobile_drawer.dart';
// import 'package:just_audio/just_audio.dart';

class MyMobileLayout extends StatefulWidget {
  const MyMobileLayout({super.key});

  @override
  State<MyMobileLayout> createState() => _MyMobileLayoutState();
}

class _MyMobileLayoutState extends State<MyMobileLayout>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 75,
        height: 75,
        child: FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: Colors.amber[300],
          foregroundColor: Colors.black,
          hoverColor: Colors.amber[400],
          splashColor: Colors.white,
          child: Icon(Icons.play_arrow_rounded, size: 50),
          onPressed: () {},
        ),
      ),
      //TODO complete the audiobar
      // bottomNavigationBar: ClipRRect(
      //   borderRadius: BorderRadius.circular(30),
      //   child: BottomAppBar(
      //     height: 75,
      //     padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
      //     notchMargin: 8,
      //     shape: CircularNotchedRectangle(),
      //     color: Colors.amber[200],
      //     child: Row(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         IconButton(
      //           onPressed: () {},
      //           icon: Icon(
      //             Icons.fast_rewind_rounded,
      //             color: Colors.black,
      //             size: 50,
      //           ),
      //         ),
      //         IconButton(
      //           onPressed: () {},
      //           icon: Icon(
      //             Icons.fast_forward_rounded,
      //             color: Colors.black,
      //             size: 50,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      key: _key,
      appBar: MobileAppBar(scaffoldKey: _key),
      drawer: MobileDrawer(),
      backgroundColor: Colors.amber[50],
      body: AnimatedBackground(
        vsync: this,
        behaviour: RandomParticleBehaviour(
          options: ParticleOptions(
            baseColor: const Color.fromRGBO(255, 224, 130, 1),
            spawnMaxRadius: 20,
            spawnMaxSpeed: 80,
            spawnMinSpeed: 50,
            spawnOpacity: 0.2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            color: Colors.amber[50]!.withValues(alpha: 0.5),
            child: SingleChildScrollView(
              child: Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AutoSizeText(
                    'Git and GitHub 101: The Essential Guide for Beginners',
                    maxLines: 4 + 6,
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
                    maxLines: 5 + 6,
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.black.withValues(alpha: 0.7),
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Components.topicTitledCard(
                    icon: Icon(Icons.question_mark, color: Colors.amber),
                    title: 'What is Version Control?',
                    itemsList: [
                      Components.optionsCard(
                        title:
                            'Imagine working on a group project where everyone can edit the same document without chaos. That’s version control! Git tracks every change to your code, letting you:',
                        caption: '',
                        icon: Icon(Icons.format_quote, color: Colors.blue),
                        captionMaxLines: 3 + 6 + 6,
                      ),
                      Components.optionsCard(
                        title: '',
                        caption: 'Rewind to older versions',
                        icon: Icon(
                          Icons.check_circle_outline,
                          color: Colors.lightBlue,
                        ),
                        captionMaxLines: 2 + 6 + 6,
                      ),
                      Components.optionsCard(
                        title: '',
                        caption: 'Collaborate without conflicts',
                        icon: Icon(
                          Icons.check_circle_outline,
                          color: Colors.lightBlue,
                        ),
                        captionMaxLines: 2 + 6 + 6,
                      ),
                      Components.optionsCard(
                        title: '',
                        caption: 'Experiment risk-free with new ideas”',
                        icon: Icon(
                          Icons.check_circle_outline,
                          color: Colors.lightBlue,
                        ),
                        captionMaxLines: 2 + 6 + 6,
                      ),
                    ],
                  ),
                  Components.topicTitledCard(
                    icon: Icon(Icons.install_desktop, color: Colors.green),
                    title: 'Install & Configure Git',
                    itemsList: [
                      Components.titledHyperLink(
                        title: 'Step 1: ',
                        text1: 'Download Git from ',
                        linkText: 'git-scm.com',
                        link: 'https://git-scm.com/',
                        text2: '',
                        icon: Icon(Icons.download, color: Colors.greenAccent),
                      ),

                      Components.titledCodingCardElevated(
                        Components.titledCodingCard(
                          'Step 2: Set up your identity:',
                          '> git config --global user.name "Your Name"\n> git config --global user.email "your@email.com" ',
                        ),
                        Icon(Icons.code, color: Colors.blue),
                      ),
                      Components.optionsCard(
                        title: 'Pro Tip: ',
                        caption: 'Use "git config --list" to verify settings.',
                        icon: Icon(
                          Icons.local_fire_department,
                          color: Colors.deepOrange,
                        ),
                        captionMaxLines: 1 + 6 + 6,
                      ),
                    ],
                  ),
                  Components.topicTitledCard(
                    icon: Icon(Icons.star, color: Colors.yellowAccent),
                    title: 'Create Your First Repo',
                    itemsList: [
                      Components.titledCodingCardElevated(
                        Components.titledCodingCard(
                          'git init',
                          '> mkdir my-project\n> cd my-project\n> git init  # Initializes a hidden .git folder',
                        ),
                        Icon(Icons.code, color: Colors.blue),
                      ),
                      Components.optionsCard(
                        title: '',
                        caption:
                            'This turns any directory into a version-controlled project.',
                        icon: Icon(
                          Icons.circle_outlined,
                          color: Colors.amberAccent,
                        ),
                        captionMaxLines: 1 + 6 + 6,
                      ),
                    ],
                  ),
                  Components.topicTitledCard(
                    icon: Icon(Icons.lightbulb, color: Colors.amber),
                    title: 'Git Workflow: Add, Commit',
                    itemsList: [
                      Components.titledCodingCardElevated(
                        Components.titledCodingCard(
                          'git add: Stages changes for commit.',
                          '> git add file.txt     # Add specific file\n> git add .           # Add all changes  ',
                        ),
                        Icon(Icons.code, color: Colors.blue),
                      ),
                      Components.titledCodingCardElevated(
                        Components.titledCodingCard(
                          'git commit: Saves a snapshot.',
                          '> git commit -m "Add login page"  # -m adds a message            # Add all changes  ',
                        ),
                        Icon(Icons.code, color: Colors.blue),
                      ),
                      Components.optionsCard(
                        title: 'Pro Tip:\n',
                        caption:
                            'Commit messages should be concise and descriptive (e.g., “Fix button color bug”).',
                        icon: Icon(
                          Icons.local_fire_department,
                          color: Colors.deepOrange,
                        ),
                        captionMaxLines: 2 + 6 + 6,
                      ),
                    ],
                  ),
                  Components.topicTitledCard(
                    icon: Icon(Icons.lightbulb, color: Colors.amber),
                    title: 'View Commit History',
                    itemsList: [
                      Components.titledCodingCardElevated(
                        Components.titledCodingCard(
                          'git log',
                          '> git log --oneline    # Compact view\n> git log --graph      # Visualize branches ',
                        ),
                        Icon(Icons.code, color: Colors.blue),
                      ),
                      Components.titledCodingCardElevated(
                        Components.titledCodingCard(
                          'Example output:',
                          '> a1b2c3d (HEAD -> main) Add login page\n> e4f5g6h Initialize project',
                        ),
                        Icon(Icons.code, color: Colors.blue),
                      ),
                    ],
                  ),
                  Components.topicTitledCard(
                    icon: Icon(Icons.undo, color: Colors.green[900]),
                    title: 'Undoing Mistakes',
                    itemsList: [
                      Components.titledCodingCardElevated(
                        Components.titledCodingCard(
                          'Unstage a file:',
                          '> git restore --staged file.txt',
                        ),
                        Icon(Icons.circle, color: Colors.green[700]),
                      ),
                      Components.titledCodingCardElevated(
                        Components.titledCodingCard(
                          'Discard uncommitted changes:',
                          '> git restore file.txt',
                        ),
                        Icon(Icons.circle, color: Colors.green[700]),
                      ),
                      Components.titledCodingCardElevated(
                        Components.titledCodingCard(
                          'Revert a commit:',
                          '> git revert bad_commit_hash',
                        ),
                        Icon(Icons.circle, color: Colors.green[700]),
                      ),
                    ],
                  ),
                  Components.topicTitledCard(
                    icon: Icon(Icons.lan_rounded, color: Colors.orange[600]),
                    title: 'Branching Basics',
                    itemsList: [
                      Components.titledCodingCardElevated(
                        Components.titledCodingCard(
                          'Branches let you work on features without affecting the main code:',
                          '> git switch -c new-feature  # Create and switch to a branch\n> git switch main              # Return to main branch\n> git merge new-feature     # Combine branches',
                        ),
                        Icon(Icons.circle, color: Colors.orange),
                      ),
                    ],
                  ),
                  Components.topicTitledCard(
                    icon: Icon(Icons.wifi_sharp, color: Colors.blue),
                    title: 'Working with Remotes',
                    itemsList: [
                      Components.titledCodingCardElevated(
                        Components.titledCodingCard(
                          'Connect to GitHub:',
                          '> git remote add origin https://github.com/your-username/repo.git\n> git push -u origin main   # First push',
                        ),
                        Icon(Icons.circle, color: Colors.blue),
                      ),
                      Components.titledCodingCardElevated(
                        Components.titledCodingCard(
                          'Daily Workflow:',
                          '> git pull origin main  # Fetch remote changes\n> git push origin main  # Send local commits',
                        ),
                        Icon(Icons.circle, color: Colors.blue),
                      ),
                    ],
                  ),
                  Components.topicTitledCard(
                    icon: Icon(
                      Icons.question_answer_rounded,
                      color: Colors.lightGreen,
                    ),
                    title: 'Git Best Practices',
                    itemsList: [
                      Components.optionsCard(
                        title: 'Commit Often:\n',
                        caption: 'Small, frequent commits > giant dumps.',
                        icon: Icon(
                          Icons.looks_one_rounded,
                          color: Colors.lightGreenAccent,
                        ),
                        captionMaxLines: 10,
                      ),
                      Components.optionsCard(
                        title: 'Write Useful Messages:\n',
                        caption: 'Avoid “fixed stuff” – be specific.',
                        icon: Icon(
                          Icons.looks_two_rounded,
                          color: Colors.lightGreenAccent,
                        ),
                        captionMaxLines: 10,
                      ),
                      Components.optionsCard(
                        title: 'Branch Strategically:\n',
                        caption: 'Use names like "feat/login" or "fix/typo".',
                        icon: Icon(
                          Icons.looks_3_rounded,
                          color: Colors.lightGreenAccent,
                        ),
                        captionMaxLines: 10,
                      ),
                      Components.optionsCard(
                        title: 'Never Force Push ',
                        caption: 'on shared branches.',
                        icon: Icon(
                          Icons.looks_4_rounded,
                          color: Colors.lightGreenAccent,
                        ),
                        captionMaxLines: 10,
                      ),
                    ],
                  ),
                  Components.topicTitledCard(
                    icon: Icon(Icons.info, color: Colors.blue[800]),
                    title: 'GitHub: Your Code’s Social Network',
                    itemsList: [
                      Components.optionsCard(
                        title: 'GitHub adds superpowers to Git:',
                        caption: '',
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.blue,
                        ),
                        captionMaxLines: 10,
                      ),
                      Components.optionsCard(
                        title: 'Pull Requests:\n',
                        caption: 'Propose and review code changes.',
                        icon: Icon(Icons.circle, color: Colors.blue),
                        captionMaxLines: 10,
                      ),
                      Components.optionsCard(
                        title: 'Issues:\n',
                        caption: 'Track bugs and feature requests.',
                        icon: Icon(Icons.circle, color: Colors.blue),
                        captionMaxLines: 10,
                      ),
                      Components.optionsCard(
                        title: 'GitHub Pages:\n',
                        caption:
                            'Host websites directly from repos.\nExample workflow: Fork a repo → Make changes → Open a PR!',
                        icon: Icon(Icons.circle, color: Colors.blue),
                        captionMaxLines: 10,
                      ),
                    ],
                  ),
                  Components.topicTitledCard(
                    icon: Icon(Icons.lightbulb, color: Colors.amber),
                    title: 'GitHub Student Developer Pack',
                    itemsList: [
                      Components.optionsCard(
                        title: r'Free $1000s in tools for learners:',
                        caption: '',
                        icon: Icon(Icons.attach_money, color: Colors.green),
                        captionMaxLines: 1 + 6 + 6,
                      ),
                      Components.optionsCard(
                        title: 'JetBrains IDEs: ',
                        caption: 'Full access to PyCharm, WebStorm, etc.',
                        icon: Icon(Icons.code, color: Colors.blue),
                        captionMaxLines: 1 + 6 + 6,
                      ),
                      Components.optionsCard(
                        title: 'GitHub Pro: ',
                        caption: 'Unlimited private repos.',
                        icon: Icon(Icons.attach_money, color: Colors.green),
                        captionMaxLines: 1 + 6 + 6,
                      ),
                      Components.optionsCard(
                        title: 'Microsoft Azure: ',
                        caption: r'$100 cloud credits.',
                        icon: Icon(Icons.attach_money, color: Colors.green),
                        captionMaxLines: 1 + 6 + 6,
                      ),
                      Components.optionsCard(
                        title: 'Canva Pro: ',
                        caption: 'Design assets for portfolios.',
                        icon: Icon(
                          Icons.design_services,
                          color: Colors.indigoAccent,
                        ),
                        captionMaxLines: 1 + 6 + 6,
                      ),
                      Components.titledHyperLink(
                        title: 'How to Claim: ',
                        text1: 'Verify student status at ',
                        linkText: 'education.github.com/pack',
                        link: 'https://education.github.com/pack',
                        text2: '',
                        icon: Icon(Icons.download, color: Colors.greenAccent),
                      ),
                    ],
                  ),
                  Components.topicTitledCard(
                    icon: Icon(
                      Icons.fork_left_rounded,
                      color: Colors.orange[900],
                    ),
                    title:
                        'Git isn’t just for pros – it’s your code safety net. Start with:',
                    itemsList: [
                      Components.optionsCard(
                        title: '',
                        caption: '"git init" a project',
                        icon: Icon(
                          Icons.looks_one_rounded,
                          color: Colors.orange[800],
                        ),
                        captionMaxLines: 10,
                      ),
                      Components.optionsCard(
                        title: '',
                        caption: '"git add" and "commit" daily',
                        icon: Icon(
                          Icons.looks_two_rounded,
                          color: Colors.orange[800],
                        ),
                        captionMaxLines: 10,
                      ),
                      Components.optionsCard(
                        title: '',
                        caption: 'Push to GitHub for backup',
                        icon: Icon(
                          Icons.looks_3_rounded,
                          color: Colors.orange[800],
                        ),
                        captionMaxLines: 10,
                      ),
                    ],
                  ),
                  Components.titledCodingCardElevated(
                    Components.titledCodingCard(
                      'Cheat Sheet Box',
                      '# Basics  \n> git init          # Start a repo  \n> git add .         # Stage changes  \n> git commit -m ""  # Save snapshot  \n> git status        # Check changes  \n> git log           # View history  # GitHub  \n> git push          # Send to remote  \n> git pull          # Fetch updates  ',
                    ),
                    Icon(Icons.code, color: Colors.blue),
                  ),
                  AutoSizeText(
                    'Interested To Learn?',
                    maxLines: 4 + 6,
                    minFontSize: 30,
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
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
                          padding: WidgetStateProperty.all(EdgeInsets.all(20)),
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
                          'Start Learning',
                          minFontSize: 5,
                          maxLines: 1 + 6,
                        ),
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
    );
  }
}
