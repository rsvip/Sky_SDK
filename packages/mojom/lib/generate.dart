// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/*
* This script should be invoked via 'pub run' for an application that consumes
* pub packages containing generated Mojo bindings (.mojom.dart files).
*
* It should be invoked as follows after 'pub get':
* $ pub run mojom:generate
*/

import 'dart:async';
import 'dart:io';

import 'package:args/args.dart' as args;
import 'package:path/path.dart' as path;

bool verbose;
bool dryRun;

bool isMojomDart(String path) => path.endsWith('.mojom.dart');

// Copies .mojom.dart files from a particular package's mojom directory to
// the mojom package directory.
//
// mojomDirectory: A pub packages mojom directory, i.e. $PACKAGE/mojom.
// mojomPackage: The mojom package directory.
copyMojomDirContents(Directory mojomDirectory, Directory mojomPackage) async {
  assert(await mojomDirectory.exists());
  await for (var mojoms in mojomDirectory.list(recursive: true)) {
    if (mojoms is! File) continue;
    if (!isMojomDart(mojoms.path)) continue;
    if (verbose) print("Found $mojoms");

    final relative = path.relative(mojoms.path, from: mojomDirectory.path);
    final dest = path.join(mojomPackage.path, relative);
    final destDirectory = new Directory(path.dirname(dest));

    if (verbose || dryRun) {
      print('Copying $mojoms to $dest');
    }

    if (!dryRun) {
      final File source = new File(mojoms.path);
      if (verbose) print("Ensuring $destDirectory exists");
      await destDirectory.create(recursive: true);
      source.copy(dest);
    }
  }
}

// If a package has a mojom directory, uses copyMojomDirContents to install them
// in the mojom package.
//
// package: The directory of a pub package in an application's packages
//          directory.
// mojoPackage: The mojom package directory in an application's packages
//              directory
installPackageMojoms(Directory package, Directory mojomPackage) async {
  if (package.path == mojomPackage.path) return;
  if (verbose) print("package = $package");
  final mojomDirectory = new Directory(path.join(package.path, 'mojom'));
  if (verbose) print("looking for = $mojomDirectory");
  if (await mojomDirectory.exists()) {
    copyMojomDirContents(mojomDirectory, mojomPackage);
  } else if (verbose) {
    print("$mojomDirectory not found");
  }
}

main(List<String> arguments) async {
  final parser = new args.ArgParser()
    ..addOption('package-root',
        abbr: 'p',
        defaultsTo: path.join(Directory.current.path, 'packages'),
        help: 'An absolute path to an application\'s package root')
    ..addOption('additional-mojom-dir',
        abbr: 'a',
        allowMultiple: true,
        help: 'Absolute path to an additional directory containing mojom.dart'
        'files to put in the mojom package. May be specified multiple times.')
    ..addFlag('dry-run',
        abbr: 'd',
        defaultsTo: false,
        help: 'Print the copy operations that would have been run, but'
        'do not copy anything.')
    ..addFlag('verbose', abbr: 'v', defaultsTo: false);
  final result = parser.parse(arguments);
  verbose = result['verbose'];
  dryRun = result['dry-run'];

  final packages = new Directory(result['package-root']);
  if (!packages.isAbsolute) {
    print("The --package-root parameter should be an absolute path.");
    exit(1);
  }
  if (verbose) print("packages = $packages");
  if (!(await packages.exists())) {
    print("The packages directory $packages does not exist");
    exit(1);
  }

  var additional_mojom_dirs = [];
  for (var mojom_dir_path in result['additional-mojom-dir']) {
    final mojom_dir = new Directory(mojom_dir_path);
    if (!mojom_dir.isAbsolute) {
      print("All --additional-mojom-dir parameters should be absolute paths.");
      exit(1);
    }
    if (!(await mojom_dir.exists())) {
      print("The additional mojom directory $mojom_dir does not exist");
      exit(1);
    }
    additional_mojom_dirs.add(mojom_dir);
  }
  if (verbose) print("additional_mojom_dirs = $additional_mojom_dirs");

  final mojomPackage = new Directory(path.join(packages.path, 'mojom'));
  if (verbose) print("mojom package = $mojomPackage");
  if (!(await mojomPackage.exists())) {
    print("The mojom package directory $mojomPackage does not exist");
    exit(1);
  }

  await for (var package in packages.list()) {
    if (package is Directory) {
      installPackageMojoms(package, mojomPackage);
    }
  }

  for (var mojom_dir in additional_mojom_dirs) {
    copyMojomDirContents(mojom_dir, mojomPackage);
  }
}
