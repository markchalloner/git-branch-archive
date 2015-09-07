# Git Branch Archive

## Table Of Contents

- [Introduction](#introduction)
- [Installation](#installation)
- [Usage](#usage)
- [Uninstallation](#uninstallation)
- [Contributing](#contributing)

## Introduction

A git plugin to make archiving branches to tags easier. The plugin takes a branch (or uses the current branch if none is specified on the command line) and:

- validates it is not the master or git is in detached head state
- checks out the master branch
- creates a tag archive/{branch}
- pushes this tag to the origin
- deletes the branch
- deletes the branch from the origin

## Installation

Via git clone.

The installer installs git-semver into the first of the following directories that exist and are in the path:

- /usr/local/bin
- /usr/bin
- /bin

In Linux, OSX and Windows Cygwin the installer will create a symlink. In Windows MinGW creates a stub instead.

``` bash
(git clone git@github.com:markchalloner/git-branch-archive.git && \
cd git-branch-archive && git checkout $(
    git tag | grep '^[0-9]\+\.[0-9]\+\.[0-9]\+$' | \
    sort -t. -k 1,1n -k 2,2n -k 3,3n | tail -n 1
) && sudo ./install.sh)

```

## Usage

``` bash
git branch-archive [branch-name]
```

## Uninstallation

### Automatically

Via uninstaller in clone directory. Navigate to your original clone directory and run:

``` bash
sudo git-branch-archive/uninstall.sh
```

### Manually

git-branch-archive is installed by placing a symlink/stub in one of the bin directories in the path.

- ${HOME}/bin
- /usr/local/bin
- /usr/bin
- /bin

It can be deleted easily:

``` bash
sudo rm $(which git-branch-archive)
```

## Changelog

Please see [CHANGELOG.md] for more information what has changed recently.

## Contributing

Please see [CONTRIBUTING.md] for details.

[CHANGELOG.md]: CHANGELOG.md
[CONTRIBUTING.md]: CONTRIBUTING.md
