import 'package:flutter/material.dart';
import 'package:git_project/pages/blog/blog_post_git/blog_post_git.dart';
import 'pages/blog/blog_page.dart';
import 'pages/contact_us_page/contact_us_page.dart';
import 'pages/courses/git/advanced/git_course_advanced_page.dart';
import 'pages/courses/git/advanced_quiz/git_course_advanced_quiz_page.dart';
import 'pages/courses/git/basics_quiz/git_course_basics_quiz_page.dart';
import 'pages/courses/git/contribute/git_course_contribute_page.dart';
import 'pages/courses/git/contribute_quiz/git_course_contribute_quiz_page.dart';
import 'pages/courses/git/exercises/git_course_exercises_page.dart';
import 'pages/courses/git/git_and_github/git_course_git_and_github_page.dart';
import 'pages/courses/git/git_and_github_quiz/git_course_git_and_github_quiz_page.dart';
import 'pages/courses/git/undo/git_course_undo_page.dart';
import 'pages/courses/git/undo_quiz/git_course_undo_quiz_page.dart';
import 'pages/courses/git/wyl/git_course_wyl_page.dart';
import 'pages/courses/git/basics/git_course_basics_page.dart';
import 'pages/home_page/home_page.dart';
import 'pages/courses/git/intro/git_course_page.dart';

class Routes {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) => HomePage(),
    '/blog': (context) => BlogPage(),
    '/blog/git': (context) => BlogPagePostGit(),
    '/contact-us': (context) => ContactUsPage(),
    GitCoursePage.lessons.values.elementAt(0)['route']!.first:
        (context) => GitCoursePage(),
    GitCoursePage.lessons.values.elementAt(1)['route']!.first:
        (context) => GitCourseBasicsPage(),
    GitCoursePage.lessons.values.elementAt(2)['route']!.first:
        (context) => GitCourseGitAndGithubPage(),
    GitCoursePage.lessons.values.elementAt(3)['route']!.first:
        (context) => GitCourseContributePage(),
    GitCoursePage.lessons.values.elementAt(4)['route']!.first:
        (context) => GitCourseAdvancedPage(),
    GitCoursePage.lessons.values.elementAt(5)['route']!.first:
        (context) => GitCourseUndoPage(),
    GitCoursePage.lessons.values.elementAt(6)['route']!.first:
        (context) => GitCourseExercisesPage(),
    GitCoursePage.lessons.values.elementAt(7)['route']!.first:
        (context) => GitCourseWYLPage(),
    '${GitCoursePage.lessons.values.elementAt(1)['route']!.first}-quiz':
        (context) => GitCourseBasicsQuizPage(),
    '${GitCoursePage.lessons.values.elementAt(2)['route']!.first}-quiz':
        (context) => GitCourseGitAndGithubQuizPage(),
    '${GitCoursePage.lessons.values.elementAt(3)['route']!.first}-quiz':
        (context) => GitCourseContributeQuizPage(),
    '${GitCoursePage.lessons.values.elementAt(4)['route']!.first}-quiz':
        (context) => GitCourseAdvancedQuizPage(),
    '${GitCoursePage.lessons.values.elementAt(5)['route']!.first}-quiz':
        (context) => GitCourseUndoQuizPage(),
  };
}
