// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// WARNING: Do not edit - generated code.
part of dart.sky;

class LayoutRoot extends
    NativeFieldWrapperClass2 {
    // Constructors
    void _constructor() native "LayoutRoot_constructorCallback";
    LayoutRoot() { _constructor(); }

    // Attributes
    double get minWidth native "LayoutRoot_minWidth_Getter";
    void set minWidth(double value) native "LayoutRoot_minWidth_Setter";
    double get maxWidth native "LayoutRoot_maxWidth_Getter";
    void set maxWidth(double value) native "LayoutRoot_maxWidth_Setter";
    double get minHeight native "LayoutRoot_minHeight_Getter";
    void set minHeight(double value) native "LayoutRoot_minHeight_Setter";
    double get maxHeight native "LayoutRoot_maxHeight_Getter";
    void set maxHeight(double value) native "LayoutRoot_maxHeight_Setter";
    Element get rootElement native "LayoutRoot_rootElement_Getter";
    void set rootElement(Element value) native "LayoutRoot_rootElement_Setter";

    // Methods
    void layout() native "LayoutRoot_layout_Callback";
    void paint(Canvas canvas) native "LayoutRoot_paint_Callback";

    // Operators
}
