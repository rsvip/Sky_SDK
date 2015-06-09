// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:sky/framework/fn2.dart';

class SimplerApp extends App {
  UINode build() {
    return new BlockContainer(children:[
        new DecoratedBox(key:'1', height: 200.0, backgroundColor: 0xFF0000FF),
        new DecoratedBox(key:'2', height: 200.0, backgroundColor: 0xFFFF00FF),
        new DecoratedBox(key:'3', height: 200.0, backgroundColor: 0xFF00FFFF),
        new DecoratedBox(key:'4', height: 200.0, backgroundColor: 0xFFCC00CC)
    ]);
  }
}

void main() {
  new SimplerApp();
}