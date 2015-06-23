// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math' as math;

import 'package:sky/rendering/box.dart';
import 'package:sky/rendering/flex.dart';
import 'package:sky/rendering/sky_binding.dart';
import 'package:sky/theme/colors.dart' as colors;
import 'package:sky/theme/edges.dart';
import 'package:sky/theme/theme_data.dart';
import 'package:sky/theme/typography.dart' as typography;
import 'package:sky/widgets/basic.dart';
import 'package:sky/widgets/material.dart';
import 'package:sky/widgets/raised_button.dart';
import 'package:sky/widgets/scaffold.dart';
import 'package:sky/widgets/theme.dart';
import 'package:sky/widgets/tool_bar.dart';
import 'package:sky/widgets/widget.dart';

class DialogDemo extends App {
  bool showDialog = false;

  void fireMissles() {
    setState(() {
      showDialog = true;
    });
  }

  Widget buildDialog() {

  }

  Widget build() {
    return new Theme(
      data: new ThemeData(color: colors.Blue, text: typography.white),
      child: new Scaffold(
        toolbar: new ToolBar(
            center: new Text('Mission Control', style: typography.white.title)),
        body: new Material(
          edge: MaterialEdge.canvas,
          child: new Flex([
              new Container(
                padding: new EdgeDims.symmetric(horizontal: 8.0, vertical: 25.0),
                child: new RaisedButton(
                  enabled: enabledRemove,
                  child: new Text('FIRE ALL MISSLES')
                  onPressed: fireMissles
                )
              ),
            ],
            direction: FlexDirection.vertical,
            justifyContent: FlexJustifyContent.spaceBetween
          )
        ),
        dialog: buildDialog() ? showDialog : null
      )
    );
  }
}

void main() {
  runApp(new DialogDemo());
  SkyBinding.instance.onFrame = () {
    // uncomment this for debugging:
    // SkyBinding.instance.debugDumpRenderTree();
  };
}
