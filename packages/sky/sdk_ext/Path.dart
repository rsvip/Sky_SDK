// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// WARNING: Do not edit - generated code.
part of dart.sky;

class Path extends
    NativeFieldWrapperClass2 {
    // Constructors
    void _constructor() native "Path_constructorCallback";
    Path() { _constructor(); }

    // Attributes

    // Methods
    void moveTo(double x, double y) native "Path_moveTo_Callback";
    void lineTo(double x, double y) native "Path_lineTo_Callback";
    void arcTo(Rect rect, double startAngle, double sweepAngle, bool forceMoveTo) native "Path_arcTo_Callback";
    void addOval(Rect oval) native "Path_addOval_Callback";
    void close() native "Path_close_Callback";

    // Operators
}
