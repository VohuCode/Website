import 'package:flutter/material.dart';
import '../../../../responsive_layout.dart';
import 'layouts/desktop_design.dart';
import 'layouts/mobile_design.dart';

class GitCoursePage extends StatelessWidget {
  const GitCoursePage({super.key});
  static final Map<String, Map<String, List<String>>> lessons = {
    'What is Git': {
      'subtitle': ['Version Control: Track, Team, Protect'],
      'route': ['/git'],
    },
    'Git Basics': {
      'subtitle': ['Commit, Branch, Code Safe'],
      'route': ['/git/basics'],
      'content': [
        'What is Version Control?',
        'Install & Configure Git',
        'Create Your First Repo',
        'Git Workflow: Add, Commit',
        'View Commit History',
        'Undoing Mistakes',
        'Branching Basics',
        'Working with Remotes',
        'Git Best Practices',
      ],
    },
    'Git and GitHub': {
      'subtitle': ['Control Code, Team Up'],
      'route': ['/git/git-and-github'],
      'content': [
        'What is GitHub?',
        'Link Git & GitHub',
        'Clone Remote Repos',
        'Push & Pull Basics',
        'Create Pull Requests',
        'Fork & Contribute',
        'Manage Issues',
        'GitHub Branches',
        'GitHub Actions 101',
        'Host with GitHub Pages',
        'GitHub Security',
        'GitHub CLI Tools',
        'GitHub Best Practices',
      ],
    },
    'Git Contribute': {
      'subtitle': ['Fork, Share, Open Source'],
      'route': ['/git/contribute'],
      'content': [
        'Contribution Basics',
        'Fork a Repository',
        'Clone Your Fork',
        'Branch for Changes',
        'Commit & Push Changes',
        'Create a Pull Request',
        'Address PR Feedback',
        'Sync with Upstream',
        'Contribute Without Forking',
        'GitHub Issues & Discussions',
        'Sign Off Contributions',
        'Contribution Guidelines',
        'Multi-Repo Workflows',
      ],
    },
    'Git Advanced': {
      'subtitle': ['Rebase, Hook, Automate'],
      'route': ['/git/advanced'],
      'content': [
        'Rebasing vs. Merging',
        'Interactive Rebase',
        'Advanced Stashing',
        'Cherry-Picking Commits',
        'Submodules & Subtrees',
        'Custom Git Hooks',
        'Reflog: Undo Anything',
        'Bisect Debugging',
        'Worktree Management',
        'Advanced Merging',
        'Filtering History',
        'Commit Signing',
        'Git Internals',
        'Patch Management',
        'Advanced Diff & Log',
        'Git Workflows (Gitflow)',
      ],
    },
    'Git Undo': {
      'subtitle': ['Undo, Revert, Recover'],
      'route': ['/git/undo'],
      'content': [
        'Undo Unstaged Changes',
        'Unstage Files',
        'Amend the Last Commit',
        'Reset to a Previous Commit',
        'Revert a Commit',
        'Undo a Merge',
        'Recover Lost Commits',
        'Clean Untracked Files',
        'Undo a Rebase',
        'Unpushing Commits',
        'Interactive Rebase for Undo',
        'Undo Signed Commits',
        'Best Practices for Undoing',
      ],
    },
    'Git Exercises': {
      'subtitle': ['Practice, Test, Master Skills'],
      'route': ['/git/exercises'],
      'content': [
        'Exercise 1: Git Basics – Time Capsule Project',
        'Exercise 2: Git & GitHub – First Pull Request',
        'Exercise 3: Git Contribute – Fix a Documentation Typo',
        'Exercise 4: Git Advanced – Track Down a Bug',
        'Exercise 5: Git Undo – Disaster Recovery',
      ],
    },
    'WYL': {
      'route': ['/git/wyl'],
      'content': [
        '''🎉 Congratulations! 🎉
You’ve mastered the fundamentals of Git!
Here’s everything you’ve accomplished in this course:''',
        '''🛠️ Git Essentials
✅ Version Control Basics: Why Git is essential for tracking changes and collaborating.

✅ Local Workflow: git init, git add, git commit, and the staging area.

✅ Branching & Merging: Create, switch, and merge branches (git branch, git merge).

✅ Undoing Mistakes: Amend commits, reset history, and recover lost work (git restore, git reflog).

✅ Stashing Changes: Save work-in-progress with git stash.''',
        '''
🌐 Collaboration & Remote Work
✅ GitHub/GitLab Basics: Clone, fork, and sync repos with git clone, git push, and git pull.

✅ Pull Requests: Contribute to projects via forks, branches, and PRs.

✅ Conflict Resolution: Resolve merge conflicts like a pro.''',
        '''
🚀 Advanced Skills
✅ Rebasing: Clean up history with git rebase.

✅ Tagging: Mark releases with git tag.

✅ Hooks: Automate workflows with pre-commit/push scripts.

✅ Git Internals: Blobs, trees, and commits (how Git works under the hood).''',
        '''
💡 Best Practices
✅ Atomic commits and meaningful messages.

✅ Using .gitignore to exclude unnecessary files.

✅ Safe force-pushing and collaborative etiquette.''',
        '''
🏆 What’s Next?
Build Your Portfolio: Add Git projects to your GitHub profile.

Join Open Source: Contribute to projects you love.

Deepen Your Skills: Explore CI/CD, Git workflows (Gitflow), and advanced tooling.''',
        '''Keep coding, keep committing, and keep learning!
💻⚡ Explore More Courses →''',
      ],
    },
  };
  @override
  Widget build(BuildContext context) {
    return ResponsiveDesign(
      mobileLayout: MyMobileLayout(),
      desktopLayout: MyDesktopLayout(),
    );
  }
}
