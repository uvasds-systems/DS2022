# DS2022

Course material for **DS2022 Systems I: Introduction to Computing**

## Fall 2024

Instructor: [**Neal Magee**](https://nmagee.github.io/)

Syllabi and course details are in Canvas:

- [**Section DS2022-001**](https://canvas.its.virginia.edu/) (19722) - Tues/Thurs 9:30am-10:45am DS306
- [**Section DS2022-002**](https://canvas.its.virginia.edu/) (19868) - Tues/Thurs 11:00am-12:15pm DS306

## Setup

Please read and complete all setup instructions found [here](SETUP.md).

## Content

[Weekly modules](CONTENT.md)

## Forks

Once you have forked this repository, you have two options for keeping your fork current with new changes added to the original repository:

### Update your fork with the GitHub UI

1. Find the "Sync Fork" button on the main page of your fork in GitHub.
2. Within the drop-down menu, click on "Update Branch" to incorporate all upstream changes.

![Sync Fork with Upstream](https://s3.amazonaws.com/ds2002-resources/images/sync-fork-upstream.png)

### Update your fork with the CLI

To stay current with new releases into the course repository, follow these steps:

1. Add an upstream source
```
git remote add upstream https://github.com/uvasds-systems/ds2002.git
```
2. Fetch from the upstream branch:
```
git fetch upstream
```
3. Merge your branch with the upstream branch.
```
git merge upstream/main main
```

This can be run in a single block:
```
git remote add upstream https://github.com/uvasds-systems/ds2002.git
git fetch upstream
git merge upstream/main main
```

This will pull all upstream changes in and merge them with your fork. Note that the first line is a one-time configuration, whereas lines 2 and 3 can be used repeatedly to catch up with the upstream source.
