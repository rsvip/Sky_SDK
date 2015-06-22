// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// WARNING: Do not edit - generated code.
part of dart.sky;

class Paint extends
    NativeFieldWrapperClass2 {
    // Constructors
    void _constructor() native "Paint_constructorCallback";
    Paint() { _constructor(); }

    // Attributes
    double get strokeWidth native "Paint_strokeWidth_Getter";
    void set strokeWidth(double value) native "Paint_strokeWidth_Setter";
    bool get isAntiAlias native "Paint_isAntiAlias_Getter";
    void set isAntiAlias(bool value) native "Paint_isAntiAlias_Setter";
    Color get color native "Paint_color_Getter";
    void set color(Color value) native "Paint_color_Setter";

    // Methods
    void setDrawLooper(DrawLooper looper) native "Paint_setDrawLooper_Callback";
    void setColorFilter(ColorFilter filter) native "Paint_setColorFilter_Callback";
    void setMaskFilter(MaskFilter filter) native "Paint_setMaskFilter_Callback";
    void setShader(Shader shader) native "Paint_setShader_Callback";
    void setStyle(PaintingStyle style) native "Paint_setStyle_Callback";
    void setTransferMode(TransferMode transferMode) native "Paint_setTransferMode_Callback";
    String toString() native "Paint_toString_Callback";

    // Operators
}
