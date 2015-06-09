// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// WARNING: Do not edit - generated code.
library dart.sky;

import "dart:nativewrappers";
import 'dart:typed_data';

part 'Animation.dart';
part 'AnimationEffect.dart';
part 'AnimationEvent.dart';
part 'AnimationNode.dart';
part 'AnimationPlayer.dart';
part 'AnimationPlayerEvent.dart';
part 'AnimationTimeline.dart';
part 'Attr.dart';
part 'CSS.dart';
part 'CSSMatrix.dart';
part 'CSSStyleDeclaration.dart';
part 'Canvas.dart';
part 'CharacterData.dart';
part 'ClientRect.dart';
part 'ClientRectList.dart';
part 'ColorFilter.dart';
part 'CompositionEvent.dart';
part 'CustomColor.dart';
part 'CustomColorFilter.dart';
part 'CustomGradient.dart';
part 'CustomMaskFilter.dart';
part 'CustomPaintingStyle.dart';
part 'CustomPoint.dart';
part 'CustomRect.dart';
part 'CustomSize.dart';
part 'CustomTransferMode.dart';
part 'DOMError.dart';
part 'DOMException.dart';
part 'DOMTokenList.dart';
part 'Document.dart';
part 'DocumentFragment.dart';
part 'DrawLooper.dart';
part 'DrawLooperLayerInfo.dart';
part 'Element.dart';
part 'ErrorEvent.dart';
part 'Event.dart';
part 'EventTarget.dart';
part 'FocusEvent.dart';
part 'FontFace.dart';
part 'FontFaceSet.dart';
part 'GestureEvent.dart';
part 'Gradient.dart';
part 'HTMLAnchorElement.dart';
part 'HTMLContentElement.dart';
part 'HTMLElement.dart';
part 'HTMLIFrameElement.dart';
part 'HTMLImageElement.dart';
part 'HTMLImportElement.dart';
part 'HTMLScriptElement.dart';
part 'HTMLStyleElement.dart';
part 'HTMLTElement.dart';
part 'HTMLTemplateElement.dart';
part 'HTMLTitleElement.dart';
part 'HashChangeEvent.dart';
part 'Image.dart';
part 'ImageBitmap.dart';
part 'ImageData.dart';
part 'ImageDecoder.dart';
part 'KeyboardEvent.dart';
part 'LayerDrawLooperBuilder.dart';
part 'LayoutRoot.dart';
part 'Location.dart';
part 'MaskFilter.dart';
part 'MediaQueryList.dart';
part 'MediaQueryListEvent.dart';
part 'MutationObserver.dart';
part 'MutationRecord.dart';
part 'Node.dart';
part 'NodeList.dart';
part 'PageTransitionEvent.dart';
part 'Paint.dart';
part 'PaintingContext.dart';
part 'ParentNode.dart';
part 'Path.dart';
part 'Picture.dart';
part 'PictureRecorder.dart';
part 'PointerEvent.dart';
part 'RRect.dart';
part 'Range.dart';
part 'Screen.dart';
part 'Selection.dart';
part 'Shader.dart';
part 'ShadowRoot.dart';
part 'Text.dart';
part 'TextEvent.dart';
part 'TextMetrics.dart';
part 'Timing.dart';
part 'Tracing.dart';
part 'TransitionEvent.dart';
part 'UIEvent.dart';
part 'URL.dart';
part 'View.dart';
part 'WheelEvent.dart';
part 'Window.dart';

part 'BeginFrameCallback.dart';
part 'DrawLooperAddLayerCallback.dart';
part 'EventCallback.dart';
part 'ImageDecoderCallback.dart';
part 'LayoutCallback.dart';
part 'PaintingCallback.dart';
part 'RequestAnimationFrameCallback.dart';
part 'VoidCallback.dart';

Window window;
Document get document => window.document;

final Tracing tracing = new Tracing();

View view;

typedef EventListener(Event event);
