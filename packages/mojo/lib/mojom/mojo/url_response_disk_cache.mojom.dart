// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library url_response_disk_cache.mojom;

import 'dart:async';

import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojom/mojo/url_response.mojom.dart' as url_response_mojom;


class UrlResponseDiskCacheGetFileParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  url_response_mojom.UrlResponse response = null;

  UrlResponseDiskCacheGetFileParams() : super(kVersions.last.size);

  static UrlResponseDiskCacheGetFileParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static UrlResponseDiskCacheGetFileParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    UrlResponseDiskCacheGetFileParams result = new UrlResponseDiskCacheGetFileParams();

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
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.response = url_response_mojom.UrlResponse.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(response, 8, false);
  }

  String toString() {
    return "UrlResponseDiskCacheGetFileParams("
           "response: $response" ")";
  }
}

class UrlResponseDiskCacheGetFileResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  List<int> filePath = null;
  List<int> cacheDirPath = null;

  UrlResponseDiskCacheGetFileResponseParams() : super(kVersions.last.size);

  static UrlResponseDiskCacheGetFileResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static UrlResponseDiskCacheGetFileResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    UrlResponseDiskCacheGetFileResponseParams result = new UrlResponseDiskCacheGetFileResponseParams();

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
      
      result.filePath = decoder0.decodeUint8Array(8, bindings.kArrayNullable, bindings.kUnspecifiedArrayLength);
    }
    if (mainDataHeader.version >= 0) {
      
      result.cacheDirPath = decoder0.decodeUint8Array(16, bindings.kArrayNullable, bindings.kUnspecifiedArrayLength);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeUint8Array(filePath, 8, bindings.kArrayNullable, bindings.kUnspecifiedArrayLength);
    
    encoder0.encodeUint8Array(cacheDirPath, 16, bindings.kArrayNullable, bindings.kUnspecifiedArrayLength);
  }

  String toString() {
    return "UrlResponseDiskCacheGetFileResponseParams("
           "filePath: $filePath" ", "
           "cacheDirPath: $cacheDirPath" ")";
  }
}

class UrlResponseDiskCacheGetExtractedContentParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  url_response_mojom.UrlResponse response = null;

  UrlResponseDiskCacheGetExtractedContentParams() : super(kVersions.last.size);

  static UrlResponseDiskCacheGetExtractedContentParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static UrlResponseDiskCacheGetExtractedContentParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    UrlResponseDiskCacheGetExtractedContentParams result = new UrlResponseDiskCacheGetExtractedContentParams();

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
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.response = url_response_mojom.UrlResponse.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(response, 8, false);
  }

  String toString() {
    return "UrlResponseDiskCacheGetExtractedContentParams("
           "response: $response" ")";
  }
}

class UrlResponseDiskCacheGetExtractedContentResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  List<int> extractedDirPath = null;
  List<int> cacheDirPath = null;

  UrlResponseDiskCacheGetExtractedContentResponseParams() : super(kVersions.last.size);

  static UrlResponseDiskCacheGetExtractedContentResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static UrlResponseDiskCacheGetExtractedContentResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    UrlResponseDiskCacheGetExtractedContentResponseParams result = new UrlResponseDiskCacheGetExtractedContentResponseParams();

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
      
      result.extractedDirPath = decoder0.decodeUint8Array(8, bindings.kArrayNullable, bindings.kUnspecifiedArrayLength);
    }
    if (mainDataHeader.version >= 0) {
      
      result.cacheDirPath = decoder0.decodeUint8Array(16, bindings.kArrayNullable, bindings.kUnspecifiedArrayLength);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeUint8Array(extractedDirPath, 8, bindings.kArrayNullable, bindings.kUnspecifiedArrayLength);
    
    encoder0.encodeUint8Array(cacheDirPath, 16, bindings.kArrayNullable, bindings.kUnspecifiedArrayLength);
  }

  String toString() {
    return "UrlResponseDiskCacheGetExtractedContentResponseParams("
           "extractedDirPath: $extractedDirPath" ", "
           "cacheDirPath: $cacheDirPath" ")";
  }
}

const int kUrlResponseDiskCache_getFile_name = 0;
const int kUrlResponseDiskCache_getExtractedContent_name = 1;

const String UrlResponseDiskCacheName =
      'mojo::URLResponseDiskCache';

abstract class UrlResponseDiskCache {
  Future<UrlResponseDiskCacheGetFileResponseParams> getFile(url_response_mojom.UrlResponse response,[Function responseFactory = null]);
  Future<UrlResponseDiskCacheGetExtractedContentResponseParams> getExtractedContent(url_response_mojom.UrlResponse response,[Function responseFactory = null]);

}


class UrlResponseDiskCacheProxyImpl extends bindings.Proxy {
  UrlResponseDiskCacheProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  UrlResponseDiskCacheProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  UrlResponseDiskCacheProxyImpl.unbound() : super.unbound();

  static UrlResponseDiskCacheProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new UrlResponseDiskCacheProxyImpl.fromEndpoint(endpoint);

  String get name => UrlResponseDiskCacheName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case kUrlResponseDiskCache_getFile_name:
        var r = UrlResponseDiskCacheGetFileResponseParams.deserialize(
            message.payload);
        if (!message.header.hasRequestId) {
          throw 'Expected a message with a valid request Id.';
        }
        Completer c = completerMap[message.header.requestId];
        if (c == null) {
          throw 'Message had unknown request Id: ${message.header.requestId}';
        }
        completerMap.remove(message.header.requestId);
        assert(!c.isCompleted);
        c.complete(r);
        break;
      case kUrlResponseDiskCache_getExtractedContent_name:
        var r = UrlResponseDiskCacheGetExtractedContentResponseParams.deserialize(
            message.payload);
        if (!message.header.hasRequestId) {
          throw 'Expected a message with a valid request Id.';
        }
        Completer c = completerMap[message.header.requestId];
        if (c == null) {
          throw 'Message had unknown request Id: ${message.header.requestId}';
        }
        completerMap.remove(message.header.requestId);
        assert(!c.isCompleted);
        c.complete(r);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  String toString() {
    var superString = super.toString();
    return "UrlResponseDiskCacheProxyImpl($superString)";
  }
}


class _UrlResponseDiskCacheProxyCalls implements UrlResponseDiskCache {
  UrlResponseDiskCacheProxyImpl _proxyImpl;

  _UrlResponseDiskCacheProxyCalls(this._proxyImpl);
    Future<UrlResponseDiskCacheGetFileResponseParams> getFile(url_response_mojom.UrlResponse response,[Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new UrlResponseDiskCacheGetFileParams();
      params.response = response;
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kUrlResponseDiskCache_getFile_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
    Future<UrlResponseDiskCacheGetExtractedContentResponseParams> getExtractedContent(url_response_mojom.UrlResponse response,[Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new UrlResponseDiskCacheGetExtractedContentParams();
      params.response = response;
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kUrlResponseDiskCache_getExtractedContent_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
}


class UrlResponseDiskCacheProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  UrlResponseDiskCache ptr;
  final String name = UrlResponseDiskCacheName;

  UrlResponseDiskCacheProxy(UrlResponseDiskCacheProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _UrlResponseDiskCacheProxyCalls(proxyImpl);

  UrlResponseDiskCacheProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new UrlResponseDiskCacheProxyImpl.fromEndpoint(endpoint) {
    ptr = new _UrlResponseDiskCacheProxyCalls(impl);
  }

  UrlResponseDiskCacheProxy.fromHandle(core.MojoHandle handle) :
      impl = new UrlResponseDiskCacheProxyImpl.fromHandle(handle) {
    ptr = new _UrlResponseDiskCacheProxyCalls(impl);
  }

  UrlResponseDiskCacheProxy.unbound() :
      impl = new UrlResponseDiskCacheProxyImpl.unbound() {
    ptr = new _UrlResponseDiskCacheProxyCalls(impl);
  }

  static UrlResponseDiskCacheProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new UrlResponseDiskCacheProxy.fromEndpoint(endpoint);

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "UrlResponseDiskCacheProxy($impl)";
  }
}


class UrlResponseDiskCacheStub extends bindings.Stub {
  UrlResponseDiskCache _impl = null;

  UrlResponseDiskCacheStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  UrlResponseDiskCacheStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  UrlResponseDiskCacheStub.unbound() : super.unbound();

  static UrlResponseDiskCacheStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new UrlResponseDiskCacheStub.fromEndpoint(endpoint);

  static const String name = UrlResponseDiskCacheName;


  UrlResponseDiskCacheGetFileResponseParams _UrlResponseDiskCacheGetFileResponseParamsFactory(List<int> filePath, List<int> cacheDirPath) {
    var result = new UrlResponseDiskCacheGetFileResponseParams();
    result.filePath = filePath;
    result.cacheDirPath = cacheDirPath;
    return result;
  }
  UrlResponseDiskCacheGetExtractedContentResponseParams _UrlResponseDiskCacheGetExtractedContentResponseParamsFactory(List<int> extractedDirPath, List<int> cacheDirPath) {
    var result = new UrlResponseDiskCacheGetExtractedContentResponseParams();
    result.extractedDirPath = extractedDirPath;
    result.cacheDirPath = cacheDirPath;
    return result;
  }

  Future<bindings.Message> handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    assert(_impl != null);
    switch (message.header.type) {
      case kUrlResponseDiskCache_getFile_name:
        var params = UrlResponseDiskCacheGetFileParams.deserialize(
            message.payload);
        return _impl.getFile(params.response,_UrlResponseDiskCacheGetFileResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kUrlResponseDiskCache_getFile_name,
                message.header.requestId,
                bindings.MessageHeader.kMessageIsResponse);
          }
        });
        break;
      case kUrlResponseDiskCache_getExtractedContent_name:
        var params = UrlResponseDiskCacheGetExtractedContentParams.deserialize(
            message.payload);
        return _impl.getExtractedContent(params.response,_UrlResponseDiskCacheGetExtractedContentResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kUrlResponseDiskCache_getExtractedContent_name,
                message.header.requestId,
                bindings.MessageHeader.kMessageIsResponse);
          }
        });
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  UrlResponseDiskCache get impl => _impl;
  set impl(UrlResponseDiskCache d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "UrlResponseDiskCacheStub($superString)";
  }

  int get version => 0;
}


