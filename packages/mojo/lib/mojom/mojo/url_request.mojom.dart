// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library url_request_mojom;

import 'dart:async';

import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojom/mojo/http_header.mojom.dart' as http_header_mojom;


class UrlRequest extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(48, 0)
  ];
  String url = null;
  String method = "GET";
  List<http_header_mojom.HttpHeader> headers = null;
  List<core.MojoDataPipeConsumer> body = null;
  int responseBodyBufferSize = 0;
  bool autoFollowRedirects = false;
  bool bypassCache = false;

  UrlRequest() : super(kVersions.last.size);

  static UrlRequest deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static UrlRequest decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    UrlRequest result = new UrlRequest();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.url = decoder0.decodeString(8, false);
    }
    if (mainDataHeader.version >= 0) {
      
      result.method = decoder0.decodeString(16, false);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(24, true);
      if (decoder1 == null) {
        result.headers = null;
      } else {
        var si1 = decoder1.decodeDataHeaderForPointerArray(bindings.kUnspecifiedArrayLength);
        result.headers = new List<http_header_mojom.HttpHeader>(si1.numElements);
        for (int i1 = 0; i1 < si1.numElements; ++i1) {
          
          var decoder2 = decoder1.decodePointer(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i1, false);
          result.headers[i1] = http_header_mojom.HttpHeader.decode(decoder2);
        }
      }
    }
    if (mainDataHeader.version >= 0) {
      
      result.body = decoder0.decodeConsumerHandleArray(32, bindings.kArrayNullable, bindings.kUnspecifiedArrayLength);
    }
    if (mainDataHeader.version >= 0) {
      
      result.responseBodyBufferSize = decoder0.decodeUint32(40);
    }
    if (mainDataHeader.version >= 0) {
      
      result.autoFollowRedirects = decoder0.decodeBool(44, 0);
    }
    if (mainDataHeader.version >= 0) {
      
      result.bypassCache = decoder0.decodeBool(44, 1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeString(url, 8, false);
    
    encoder0.encodeString(method, 16, false);
    
    if (headers == null) {
      encoder0.encodeNullPointer(24, true);
    } else {
      var encoder1 = encoder0.encodePointerArray(headers.length, 24, bindings.kUnspecifiedArrayLength);
      for (int i0 = 0; i0 < headers.length; ++i0) {
        
        encoder1.encodeStruct(headers[i0], bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i0, false);
      }
    }
    
    encoder0.encodeConsumerHandleArray(body, 32, bindings.kArrayNullable, bindings.kUnspecifiedArrayLength);
    
    encoder0.encodeUint32(responseBodyBufferSize, 40);
    
    encoder0.encodeBool(autoFollowRedirects, 44, 0);
    
    encoder0.encodeBool(bypassCache, 44, 1);
  }

  String toString() {
    return "UrlRequest("
           "url: $url" ", "
           "method: $method" ", "
           "headers: $headers" ", "
           "body: $body" ", "
           "responseBodyBufferSize: $responseBodyBufferSize" ", "
           "autoFollowRedirects: $autoFollowRedirects" ", "
           "bypassCache: $bypassCache" ")";
  }
}


