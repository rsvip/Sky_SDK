// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:sky/framework/fn2.dart';

class HelloWorldApp extends App {
  UINode build() {
    return new Container(
      decoration: new BoxDecoration(backgroundColor: const Color(0xFFFFFFFF)),
      child: new FlexContainer(
        children: [
          new FlexExpandingChild(
            new Container(
              decoration: new BoxDecoration(backgroundColor: const Color(0xFFFF00FF))
          )),
          new Text("Hello")
        ])
    );
  }
}

void main() {
  var app = new HelloWorldApp();
  app.appView.onFrame = () {
    // uncomment this for debugging:
    app.appView.debugDumpRenderTree();
  };
}