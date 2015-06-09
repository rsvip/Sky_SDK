// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// WARNING: Do not edit - generated code.
part of dart.sky;

abstract class View extends
    NativeFieldWrapperClass2 {
    // Constructors

    // Attributes
    double get devicePixelRatio native "View_devicePixelRatio_Getter";
    double get width native "View_width_Getter";
    double get height native "View_height_Getter";
    Picture get picture native "View_picture_Getter";
    void set picture(Picture value) native "View_picture_Setter";

    // Methods
    void setEventCallback(EventCallback callback) native "View_setEventCallback_Callback";
    void setBeginFrameCallback(BeginFrameCallback callback) native "View_setBeginFrameCallback_Callback";
    void scheduleFrame() native "View_scheduleFrame_Callback";

    // Operators
}
