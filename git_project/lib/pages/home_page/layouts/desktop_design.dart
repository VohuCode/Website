import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../appbar/appbar.dart';
import 'package:animated_background/animated_background.dart';
import 'package:auto_size_text/auto_size_text.dart';

class MyDesktopLayout extends StatefulWidget {
  const MyDesktopLayout({super.key});

  @override
  State<MyDesktopLayout> createState() => _MyDesktopLayoutState();
}

class _MyDesktopLayoutState extends State<MyDesktopLayout>
    with SingleTickerProviderStateMixin {
  int _currentPageView = 0;
  bool _isNowElevatedPressed = false;
  bool _isAnimataionEnded = false;
  bool _isDottedContainerHovered = false;
  late final List<Widget> _childrenCardPageViewIndicator = <Widget>[
    dottedBorderContainer(
      title: '🦾 Learn With AI',
      subtitle:
          'We use brand new techniques to teach you and introduce very unique opportunities for you',
    ),
    dottedBorderContainer(
      title: 'Do You Want To Be Replaced? ⚠️😨',
      subtitle: '25% of routine tasks are already robotized by AI',
    ),
    dottedBorderContainer(
      title: '💥 Have Ideas?',
      subtitle:
          'Perfect! We will teach you step by step to realize your amazing ideas 🤝',
    ),
    dottedBorderContainer(
      title: '❤️ Best Supports In Your Learning',
      subtitle:
          'We will make sure you get everything with our chapter-by-chapter tests 🤗',
    ),
  ];
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _childrenCardPageViewIndicator.shuffle();
    _pageController.addListener(() {
      final newPage = _pageController.page!.round();
      if (newPage != _currentPageView) {
        setState(() {
          _currentPageView = newPage;
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: AnimatedBackground(
        vsync: this,
        behaviour: RandomParticleBehaviour(
          options: ParticleOptions(
            baseColor: Colors.grey,
            spawnMaxRadius: 30,
            spawnMaxSpeed: 250,
            spawnMinSpeed: 100,
            spawnOpacity: 0.5,
          ),
        ),
        child: CustomScrollView(
          primary: true,
          slivers: [
            WebsiteAppBar(appBarBackgroundColor: Colors.transparent),
            SliverPadding(
              padding: const EdgeInsets.all(5.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(<Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: AspectRatio(
                      aspectRatio: 3.8 / 2,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        mouseCursor: SystemMouseCursors.basic,
                        onTap: () {},
                        onHover: (bool value) {
                          setState(() {
                            _isDottedContainerHovered = value;
                          });
                        },
                        child: AnimatedContainer(
                          alignment: Alignment.center,
                          duration: const Duration(milliseconds: 200),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurStyle: BlurStyle.outer,
                                blurRadius: _isDottedContainerHovered ? 20 : 10,
                              ),
                            ],
                          ),
                          child: DottedBorder(
                            borderType: BorderType.RRect,
                            color: Colors.black,
                            radius: Radius.circular(30),
                            dashPattern: [8, 5, 8, 5],
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Container(
                                alignment: Alignment.center,
                                child: AspectRatio(
                                  aspectRatio: 4 / 2,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Row(
                                        // spacing: 50,
                                        // textBaseline: TextBaseline.ideographic,
                                        // crossAxisAlignment:
                                        //     CrossAxisAlignment.baseline,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Expanded(
                                            child: Column(
                                              spacing: 80,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Flexible(
                                                  child: AutoSizeText.rich(
                                                    TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'Learn to ',
                                                          style: TextStyle(
                                                            fontSize: 60,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: 'Code',
                                                          style: TextStyle(
                                                            fontSize: 70,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            color: Colors.white,
                                                            backgroundColor:
                                                                Colors.amber,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    minFontSize: 4,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Flexible(
                                                  child: AutoSizeText.rich(
                                                    TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'Learn in the ',
                                                          style: TextStyle(
                                                            fontSize: 40,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: 'Fastest',
                                                          style: TextStyle(
                                                            fontSize: 60,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.white,
                                                            backgroundColor:
                                                                Colors.amber,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    minFontSize: 4,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Row(
                                                    spacing: 20,
                                                    children: <Widget>[
                                                      Flexible(
                                                        child:
                                                            const AutoSizeText(
                                                              'Start',
                                                              style: TextStyle(
                                                                fontSize: 40,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                              minFontSize: 5,
                                                            ),
                                                      ),
                                                      Flexible(
                                                        child: ElevatedButton.icon(
                                                          iconAlignment:
                                                              IconAlignment.end,

                                                          icon: Flexible(
                                                            child: AnimatedSlide(
                                                              onEnd: () {
                                                                setState(() {
                                                                  _isAnimataionEnded =
                                                                      true;
                                                                });
                                                              },
                                                              offset:
                                                                  _isNowElevatedPressed
                                                                      ? Offset(
                                                                        5,
                                                                        0,
                                                                      )
                                                                      : Offset(
                                                                        0,
                                                                        0,
                                                                      ),
                                                              duration: Duration(
                                                                milliseconds:
                                                                    500,
                                                              ),
                                                              child: FittedBox(
                                                                child: Icon(
                                                                  Icons
                                                                      .arrow_forward,
                                                                  size: 40,
                                                                  color:
                                                                      _isAnimataionEnded
                                                                          ? Colors
                                                                              .transparent
                                                                          : Colors
                                                                              .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          style: ButtonStyle(
                                                            elevation:
                                                                WidgetStateProperty.all(
                                                                  10,
                                                                ),
                                                            shadowColor:
                                                                WidgetStateProperty.all(
                                                                  Colors
                                                                      .amber[100],
                                                                ),
                                                            foregroundColor:
                                                                WidgetStateProperty.all(
                                                                  Colors.white,
                                                                ),
                                                            backgroundColor: WidgetStateProperty.resolveWith((
                                                              Set<WidgetState>
                                                              states,
                                                            ) {
                                                              if (states
                                                                  .contains(
                                                                    WidgetState
                                                                        .pressed,
                                                                  )) {
                                                                return Colors
                                                                    .amberAccent;
                                                              }
                                                              if (states
                                                                  .contains(
                                                                    WidgetState
                                                                        .hovered,
                                                                  )) {
                                                                return Colors
                                                                    .amber[600];
                                                              }
                                                              return Colors
                                                                  .amber;
                                                            }),
                                                          ),
                                                          onPressed: () {
                                                            setState(() {
                                                              _isNowElevatedPressed =
                                                                  true;
                                                            });
                                                          },
                                                          label:
                                                              const AutoSizeText(
                                                                'NOW',
                                                                style: TextStyle(
                                                                  fontSize: 60,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                                minFontSize: 4,
                                                                maxLines: 1,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          // SizedBox(width: 10),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.amber,
                                                  width: 10,
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 10,
                                                    blurStyle: BlurStyle.outer,
                                                  ),
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: Colors.grey[300],
                                              ),
                                              child: cardViewWithIndicator(),
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
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cardViewWithIndicator() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'Why Us? 🤔',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  Expanded(
                    flex: 6,
                    child: PageView(
                      controller: _pageController,
                      children: _childrenCardPageViewIndicator,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SmoothPageIndicator(
                        effect: WormEffect(
                          paintStyle: PaintingStyle.stroke,
                          activeDotColor: Colors.amber,
                          dotColor: Colors.black,
                          type: WormType.thin,
                          radius: 30,
                          dotWidth: 20,
                          dotHeight: 20,
                        ),
                        onDotClicked: (int index) {
                          _pageController.animateToPage(
                            index,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        controller: _pageController,
                        count: 3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget dottedBorderContainer({
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Card(
          elevation: 35,
          shadowColor: Colors.grey,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: DottedBorder(
            borderType: BorderType.RRect,
            color: Colors.black,
            radius: Radius.circular(30),
            dashPattern: [8, 5, 8, 5],
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                // spacing: 50,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 2,
                    child: AutoSizeText(
                      title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                      ),
                      minFontSize: 15,
                      maxFontSize: 60,
                      maxLines: 2,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(height: 10),
                  Flexible(
                    flex: 2,
                    child: AutoSizeText(
                      subtitle,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.w300,
                      ),
                      minFontSize: 10,
                      maxFontSize: 60,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
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
