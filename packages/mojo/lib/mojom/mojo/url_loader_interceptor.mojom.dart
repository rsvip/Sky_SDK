// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library url_loader_interceptor.mojom;

import 'dart:async';

import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojom/mojo/url_request.mojom.dart' as url_request_mojom;
import 'package:mojom/mojo/url_response.mojom.dart' as url_response_mojom;


class UrlLoaderInterceptorResponse extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  url_request_mojom.UrlRequest request = null;
  url_response_mojom.UrlResponse response = null;

  UrlLoaderInterceptorResponse() : super(kVersions.last.size);

  static UrlLoaderInterceptorResponse deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static UrlLoaderInterceptorResponse decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    UrlLoaderInterceptorResponse result = new UrlLoaderInterceptorResponse();

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
      
      var decoder1 = decoder0.decodePointer(8, true);
      result.request = url_request_mojom.UrlRequest.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(16, true);
      result.response = url_response_mojom.UrlResponse.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(request, 8, true);
    
    encoder0.encodeStruct(response, 16, true);
  }

  String toString() {
    return "UrlLoaderInterceptorResponse("
           "request: $request" ", "
           "response: $response" ")";
  }
}

class UrlLoaderInterceptorFactoryCreateParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  Object interceptor = null;

  UrlLoaderInterceptorFactoryCreateParams() : super(kVersions.last.size);

  static UrlLoaderInterceptorFactoryCreateParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static UrlLoaderInterceptorFactoryCreateParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    UrlLoaderInterceptorFactoryCreateParams result = new UrlLoaderInterceptorFactoryCreateParams();

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
      
      result.interceptor = decoder0.decodeInterfaceRequest(8, false, UrlLoaderInterceptorStub.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeInterfaceRequest(interceptor, 8, false);
  }

  String toString() {
    return "UrlLoaderInterceptorFactoryCreateParams("
           "interceptor: $interceptor" ")";
  }
}

class UrlLoaderInterceptorInterceptRequestParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  url_request_mojom.UrlRequest request = null;

  UrlLoaderInterceptorInterceptRequestParams() : super(kVersions.last.size);

  static UrlLoaderInterceptorInterceptRequestParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static UrlLoaderInterceptorInterceptRequestParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    UrlLoaderInterceptorInterceptRequestParams result = new UrlLoaderInterceptorInterceptRequestParams();

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
      result.request = url_request_mojom.UrlRequest.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(request, 8, false);
  }

  String toString() {
    return "UrlLoaderInterceptorInterceptRequestParams("
           "request: $request" ")";
  }
}

class UrlLoaderInterceptorInterceptRequestResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  UrlLoaderInterceptorResponse response = null;

  UrlLoaderInterceptorInterceptRequestResponseParams() : super(kVersions.last.size);

  static UrlLoaderInterceptorInterceptRequestResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static UrlLoaderInterceptorInterceptRequestResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    UrlLoaderInterceptorInterceptRequestResponseParams result = new UrlLoaderInterceptorInterceptRequestResponseParams();

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
      result.response = UrlLoaderInterceptorResponse.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(response, 8, false);
  }

  String toString() {
    return "UrlLoaderInterceptorInterceptRequestResponseParams("
           "response: $response" ")";
  }
}

class UrlLoaderInterceptorInterceptFollowRedirectParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  UrlLoaderInterceptorInterceptFollowRedirectParams() : super(kVersions.last.size);

  static UrlLoaderInterceptorInterceptFollowRedirectParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static UrlLoaderInterceptorInterceptFollowRedirectParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    UrlLoaderInterceptorInterceptFollowRedirectParams result = new UrlLoaderInterceptorInterceptFollowRedirectParams();

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
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
  }

  String toString() {
    return "UrlLoaderInterceptorInterceptFollowRedirectParams("")";
  }
}

class UrlLoaderInterceptorInterceptFollowRedirectResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  UrlLoaderInterceptorResponse response = null;

  UrlLoaderInterceptorInterceptFollowRedirectResponseParams() : super(kVersions.last.size);

  static UrlLoaderInterceptorInterceptFollowRedirectResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static UrlLoaderInterceptorInterceptFollowRedirectResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    UrlLoaderInterceptorInterceptFollowRedirectResponseParams result = new UrlLoaderInterceptorInterceptFollowRedirectResponseParams();

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
      
      var decoder1 = decoder0.decodePointer(8, true);
      result.response = UrlLoaderInterceptorResponse.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(response, 8, true);
  }

  String toString() {
    return "UrlLoaderInterceptorInterceptFollowRedirectResponseParams("
           "response: $response" ")";
  }
}

class UrlLoaderInterceptorInterceptResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  url_response_mojom.UrlResponse response = null;

  UrlLoaderInterceptorInterceptResponseParams() : super(kVersions.last.size);

  static UrlLoaderInterceptorInterceptResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static UrlLoaderInterceptorInterceptResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    UrlLoaderInterceptorInterceptResponseParams result = new UrlLoaderInterceptorInterceptResponseParams();

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
    return "UrlLoaderInterceptorInterceptResponseParams("
           "response: $response" ")";
  }
}

class UrlLoaderInterceptorInterceptResponseResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  UrlLoaderInterceptorResponse response = null;

  UrlLoaderInterceptorInterceptResponseResponseParams() : super(kVersions.last.size);

  static UrlLoaderInterceptorInterceptResponseResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static UrlLoaderInterceptorInterceptResponseResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    UrlLoaderInterceptorInterceptResponseResponseParams result = new UrlLoaderInterceptorInterceptResponseResponseParams();

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
      
      var decoder1 = decoder0.decodePointer(8, true);
      result.response = UrlLoaderInterceptorResponse.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(response, 8, true);
  }

  String toString() {
    return "UrlLoaderInterceptorInterceptResponseResponseParams("
           "response: $response" ")";
  }
}

const int kUrlLoaderInterceptorFactory_create_name = 0;

const String UrlLoaderInterceptorFactoryName =
      'mojo::URLLoaderInterceptorFactory';

abstract class UrlLoaderInterceptorFactory {
  void create(Object interceptor);

}


class UrlLoaderInterceptorFactoryProxyImpl extends bindings.Proxy {
  UrlLoaderInterceptorFactoryProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  UrlLoaderInterceptorFactoryProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  UrlLoaderInterceptorFactoryProxyImpl.unbound() : super.unbound();

  static UrlLoaderInterceptorFactoryProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new UrlLoaderInterceptorFactoryProxyImpl.fromEndpoint(endpoint);

  String get name => UrlLoaderInterceptorFactoryName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  String toString() {
    var superString = super.toString();
    return "UrlLoaderInterceptorFactoryProxyImpl($superString)";
  }
}


class _UrlLoaderInterceptorFactoryProxyCalls implements UrlLoaderInterceptorFactory {
  UrlLoaderInterceptorFactoryProxyImpl _proxyImpl;

  _UrlLoaderInterceptorFactoryProxyCalls(this._proxyImpl);
    void create(Object interceptor) {
      assert(_proxyImpl.isBound);
      var params = new UrlLoaderInterceptorFactoryCreateParams();
      params.interceptor = interceptor;
      _proxyImpl.sendMessage(params, kUrlLoaderInterceptorFactory_create_name);
    }
  
}


class UrlLoaderInterceptorFactoryProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  UrlLoaderInterceptorFactory ptr;
  final String name = UrlLoaderInterceptorFactoryName;

  UrlLoaderInterceptorFactoryProxy(UrlLoaderInterceptorFactoryProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _UrlLoaderInterceptorFactoryProxyCalls(proxyImpl);

  UrlLoaderInterceptorFactoryProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new UrlLoaderInterceptorFactoryProxyImpl.fromEndpoint(endpoint) {
    ptr = new _UrlLoaderInterceptorFactoryProxyCalls(impl);
  }

  UrlLoaderInterceptorFactoryProxy.fromHandle(core.MojoHandle handle) :
      impl = new UrlLoaderInterceptorFactoryProxyImpl.fromHandle(handle) {
    ptr = new _UrlLoaderInterceptorFactoryProxyCalls(impl);
  }

  UrlLoaderInterceptorFactoryProxy.unbound() :
      impl = new UrlLoaderInterceptorFactoryProxyImpl.unbound() {
    ptr = new _UrlLoaderInterceptorFactoryProxyCalls(impl);
  }

  static UrlLoaderInterceptorFactoryProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new UrlLoaderInterceptorFactoryProxy.fromEndpoint(endpoint);

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "UrlLoaderInterceptorFactoryProxy($impl)";
  }
}


class UrlLoaderInterceptorFactoryStub extends bindings.Stub {
  UrlLoaderInterceptorFactory _impl = null;

  UrlLoaderInterceptorFactoryStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  UrlLoaderInterceptorFactoryStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  UrlLoaderInterceptorFactoryStub.unbound() : super.unbound();

  static UrlLoaderInterceptorFactoryStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new UrlLoaderInterceptorFactoryStub.fromEndpoint(endpoint);

  static const String name = UrlLoaderInterceptorFactoryName;



  Future<bindings.Message> handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    assert(_impl != null);
    switch (message.header.type) {
      case kUrlLoaderInterceptorFactory_create_name:
        var params = UrlLoaderInterceptorFactoryCreateParams.deserialize(
            message.payload);
        _impl.create(params.interceptor);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  UrlLoaderInterceptorFactory get impl => _impl;
  set impl(UrlLoaderInterceptorFactory d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "UrlLoaderInterceptorFactoryStub($superString)";
  }

  int get version => 0;
}

const int kUrlLoaderInterceptor_interceptRequest_name = 0;
const int kUrlLoaderInterceptor_interceptFollowRedirect_name = 1;
const int kUrlLoaderInterceptor_interceptResponse_name = 2;

const String UrlLoaderInterceptorName =
      'mojo::URLLoaderInterceptor';

abstract class UrlLoaderInterceptor {
  Future<UrlLoaderInterceptorInterceptRequestResponseParams> interceptRequest(url_request_mojom.UrlRequest request,[Function responseFactory = null]);
  Future<UrlLoaderInterceptorInterceptFollowRedirectResponseParams> interceptFollowRedirect([Function responseFactory = null]);
  Future<UrlLoaderInterceptorInterceptResponseResponseParams> interceptResponse(url_response_mojom.UrlResponse response,[Function responseFactory = null]);

}


class UrlLoaderInterceptorProxyImpl extends bindings.Proxy {
  UrlLoaderInterceptorProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  UrlLoaderInterceptorProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  UrlLoaderInterceptorProxyImpl.unbound() : super.unbound();

  static UrlLoaderInterceptorProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new UrlLoaderInterceptorProxyImpl.fromEndpoint(endpoint);

  String get name => UrlLoaderInterceptorName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case kUrlLoaderInterceptor_interceptRequest_name:
        var r = UrlLoaderInterceptorInterceptRequestResponseParams.deserialize(
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
      case kUrlLoaderInterceptor_interceptFollowRedirect_name:
        var r = UrlLoaderInterceptorInterceptFollowRedirectResponseParams.deserialize(
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
      case kUrlLoaderInterceptor_interceptResponse_name:
        var r = UrlLoaderInterceptorInterceptResponseResponseParams.deserialize(
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
    return "UrlLoaderInterceptorProxyImpl($superString)";
  }
}


class _UrlLoaderInterceptorProxyCalls implements UrlLoaderInterceptor {
  UrlLoaderInterceptorProxyImpl _proxyImpl;

  _UrlLoaderInterceptorProxyCalls(this._proxyImpl);
    Future<UrlLoaderInterceptorInterceptRequestResponseParams> interceptRequest(url_request_mojom.UrlRequest request,[Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new UrlLoaderInterceptorInterceptRequestParams();
      params.request = request;
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kUrlLoaderInterceptor_interceptRequest_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
    Future<UrlLoaderInterceptorInterceptFollowRedirectResponseParams> interceptFollowRedirect([Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new UrlLoaderInterceptorInterceptFollowRedirectParams();
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kUrlLoaderInterceptor_interceptFollowRedirect_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
    Future<UrlLoaderInterceptorInterceptResponseResponseParams> interceptResponse(url_response_mojom.UrlResponse response,[Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new UrlLoaderInterceptorInterceptResponseParams();
      params.response = response;
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kUrlLoaderInterceptor_interceptResponse_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
}


class UrlLoaderInterceptorProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  UrlLoaderInterceptor ptr;
  final String name = UrlLoaderInterceptorName;

  UrlLoaderInterceptorProxy(UrlLoaderInterceptorProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _UrlLoaderInterceptorProxyCalls(proxyImpl);

  UrlLoaderInterceptorProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new UrlLoaderInterceptorProxyImpl.fromEndpoint(endpoint) {
    ptr = new _UrlLoaderInterceptorProxyCalls(impl);
  }

  UrlLoaderInterceptorProxy.fromHandle(core.MojoHandle handle) :
      impl = new UrlLoaderInterceptorProxyImpl.fromHandle(handle) {
    ptr = new _UrlLoaderInterceptorProxyCalls(impl);
  }

  UrlLoaderInterceptorProxy.unbound() :
      impl = new UrlLoaderInterceptorProxyImpl.unbound() {
    ptr = new _UrlLoaderInterceptorProxyCalls(impl);
  }

  static UrlLoaderInterceptorProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new UrlLoaderInterceptorProxy.fromEndpoint(endpoint);

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "UrlLoaderInterceptorProxy($impl)";
  }
}


class UrlLoaderInterceptorStub extends bindings.Stub {
  UrlLoaderInterceptor _impl = null;

  UrlLoaderInterceptorStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  UrlLoaderInterceptorStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  UrlLoaderInterceptorStub.unbound() : super.unbound();

  static UrlLoaderInterceptorStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new UrlLoaderInterceptorStub.fromEndpoint(endpoint);

  static const String name = UrlLoaderInterceptorName;


  UrlLoaderInterceptorInterceptRequestResponseParams _UrlLoaderInterceptorInterceptRequestResponseParamsFactory(UrlLoaderInterceptorResponse response) {
    var result = new UrlLoaderInterceptorInterceptRequestResponseParams();
    result.response = response;
    return result;
  }
  UrlLoaderInterceptorInterceptFollowRedirectResponseParams _UrlLoaderInterceptorInterceptFollowRedirectResponseParamsFactory(UrlLoaderInterceptorResponse response) {
    var result = new UrlLoaderInterceptorInterceptFollowRedirectResponseParams();
    result.response = response;
    return result;
  }
  UrlLoaderInterceptorInterceptResponseResponseParams _UrlLoaderInterceptorInterceptResponseResponseParamsFactory(UrlLoaderInterceptorResponse response) {
    var result = new UrlLoaderInterceptorInterceptResponseResponseParams();
    result.response = response;
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
      case kUrlLoaderInterceptor_interceptRequest_name:
        var params = UrlLoaderInterceptorInterceptRequestParams.deserialize(
            message.payload);
        return _impl.interceptRequest(params.request,_UrlLoaderInterceptorInterceptRequestResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kUrlLoaderInterceptor_interceptRequest_name,
                message.header.requestId,
                bindings.MessageHeader.kMessageIsResponse);
          }
        });
        break;
      case kUrlLoaderInterceptor_interceptFollowRedirect_name:
        var params = UrlLoaderInterceptorInterceptFollowRedirectParams.deserialize(
            message.payload);
        return _impl.interceptFollowRedirect(_UrlLoaderInterceptorInterceptFollowRedirectResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kUrlLoaderInterceptor_interceptFollowRedirect_name,
                message.header.requestId,
                bindings.MessageHeader.kMessageIsResponse);
          }
        });
        break;
      case kUrlLoaderInterceptor_interceptResponse_name:
        var params = UrlLoaderInterceptorInterceptResponseParams.deserialize(
            message.payload);
        return _impl.interceptResponse(params.response,_UrlLoaderInterceptorInterceptResponseResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kUrlLoaderInterceptor_interceptResponse_name,
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

  UrlLoaderInterceptor get impl => _impl;
  set impl(UrlLoaderInterceptor d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "UrlLoaderInterceptorStub($superString)";
  }

  int get version => 0;
}


