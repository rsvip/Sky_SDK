// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library http_server.mojom;

import 'dart:async';

import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojom/mojo/http_connection.mojom.dart' as http_connection_mojom;


class HttpServerDelegateOnConnectedParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  Object connection = null;
  Object delegate = null;

  HttpServerDelegateOnConnectedParams() : super(kVersions.last.size);

  static HttpServerDelegateOnConnectedParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static HttpServerDelegateOnConnectedParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    HttpServerDelegateOnConnectedParams result = new HttpServerDelegateOnConnectedParams();

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
      
      result.connection = decoder0.decodeServiceInterface(8, false, http_connection_mojom.HttpConnectionProxy.newFromEndpoint);
    }
    if (mainDataHeader.version >= 0) {
      
      result.delegate = decoder0.decodeInterfaceRequest(16, false, http_connection_mojom.HttpConnectionDelegateStub.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeInterface(connection, 8, false);
    
    encoder0.encodeInterfaceRequest(delegate, 16, false);
  }

  String toString() {
    return "HttpServerDelegateOnConnectedParams("
           "connection: $connection" ", "
           "delegate: $delegate" ")";
  }
}

const int kHttpServerDelegate_onConnected_name = 0;

const String HttpServerDelegateName =
      'mojo::HttpServerDelegate';

abstract class HttpServerDelegate {
  void onConnected(Object connection, Object delegate);

}


class HttpServerDelegateProxyImpl extends bindings.Proxy {
  HttpServerDelegateProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  HttpServerDelegateProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  HttpServerDelegateProxyImpl.unbound() : super.unbound();

  static HttpServerDelegateProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new HttpServerDelegateProxyImpl.fromEndpoint(endpoint);

  String get name => HttpServerDelegateName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  String toString() {
    var superString = super.toString();
    return "HttpServerDelegateProxyImpl($superString)";
  }
}


class _HttpServerDelegateProxyCalls implements HttpServerDelegate {
  HttpServerDelegateProxyImpl _proxyImpl;

  _HttpServerDelegateProxyCalls(this._proxyImpl);
    void onConnected(Object connection, Object delegate) {
      assert(_proxyImpl.isBound);
      var params = new HttpServerDelegateOnConnectedParams();
      params.connection = connection;
      params.delegate = delegate;
      _proxyImpl.sendMessage(params, kHttpServerDelegate_onConnected_name);
    }
  
}


class HttpServerDelegateProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  HttpServerDelegate ptr;
  final String name = HttpServerDelegateName;

  HttpServerDelegateProxy(HttpServerDelegateProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _HttpServerDelegateProxyCalls(proxyImpl);

  HttpServerDelegateProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new HttpServerDelegateProxyImpl.fromEndpoint(endpoint) {
    ptr = new _HttpServerDelegateProxyCalls(impl);
  }

  HttpServerDelegateProxy.fromHandle(core.MojoHandle handle) :
      impl = new HttpServerDelegateProxyImpl.fromHandle(handle) {
    ptr = new _HttpServerDelegateProxyCalls(impl);
  }

  HttpServerDelegateProxy.unbound() :
      impl = new HttpServerDelegateProxyImpl.unbound() {
    ptr = new _HttpServerDelegateProxyCalls(impl);
  }

  static HttpServerDelegateProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new HttpServerDelegateProxy.fromEndpoint(endpoint);

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "HttpServerDelegateProxy($impl)";
  }
}


class HttpServerDelegateStub extends bindings.Stub {
  HttpServerDelegate _impl = null;

  HttpServerDelegateStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  HttpServerDelegateStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  HttpServerDelegateStub.unbound() : super.unbound();

  static HttpServerDelegateStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new HttpServerDelegateStub.fromEndpoint(endpoint);

  static const String name = HttpServerDelegateName;



  Future<bindings.Message> handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    assert(_impl != null);
    switch (message.header.type) {
      case kHttpServerDelegate_onConnected_name:
        var params = HttpServerDelegateOnConnectedParams.deserialize(
            message.payload);
        _impl.onConnected(params.connection, params.delegate);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  HttpServerDelegate get impl => _impl;
  set impl(HttpServerDelegate d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "HttpServerDelegateStub($superString)";
  }

  int get version => 0;
}


