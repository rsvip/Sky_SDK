// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library authenticating_url_loader_interceptor_meta_factory_mojom;

import 'dart:async';

import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojom/authentication/authentication.mojom.dart' as authentication_mojom;
import 'package:mojom/mojo/url_loader_interceptor.mojom.dart' as url_loader_interceptor_mojom;


class AuthenticatingUrlLoaderInterceptorMetaFactoryCreateUrlLoaderInterceptorFactoryParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  Object factoryRequest = null;
  Object authenticationService = null;

  AuthenticatingUrlLoaderInterceptorMetaFactoryCreateUrlLoaderInterceptorFactoryParams() : super(kVersions.last.size);

  static AuthenticatingUrlLoaderInterceptorMetaFactoryCreateUrlLoaderInterceptorFactoryParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static AuthenticatingUrlLoaderInterceptorMetaFactoryCreateUrlLoaderInterceptorFactoryParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    AuthenticatingUrlLoaderInterceptorMetaFactoryCreateUrlLoaderInterceptorFactoryParams result = new AuthenticatingUrlLoaderInterceptorMetaFactoryCreateUrlLoaderInterceptorFactoryParams();

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
      
      result.factoryRequest = decoder0.decodeInterfaceRequest(8, false, url_loader_interceptor_mojom.UrlLoaderInterceptorFactoryStub.newFromEndpoint);
    }
    if (mainDataHeader.version >= 0) {
      
      result.authenticationService = decoder0.decodeServiceInterface(12, false, authentication_mojom.AuthenticationServiceProxy.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeInterfaceRequest(factoryRequest, 8, false);
    
    encoder0.encodeInterface(authenticationService, 12, false);
  }

  String toString() {
    return "AuthenticatingUrlLoaderInterceptorMetaFactoryCreateUrlLoaderInterceptorFactoryParams("
           "factoryRequest: $factoryRequest" ", "
           "authenticationService: $authenticationService" ")";
  }
}

const int kAuthenticatingUrlLoaderInterceptorMetaFactory_createUrlLoaderInterceptorFactory_name = 0;

const String AuthenticatingUrlLoaderInterceptorMetaFactoryName =
      'mojo::AuthenticatingURLLoaderInterceptorMetaFactory';

abstract class AuthenticatingUrlLoaderInterceptorMetaFactory {
  void createUrlLoaderInterceptorFactory(Object factoryRequest, Object authenticationService);

}


class AuthenticatingUrlLoaderInterceptorMetaFactoryProxyImpl extends bindings.Proxy {
  AuthenticatingUrlLoaderInterceptorMetaFactoryProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  AuthenticatingUrlLoaderInterceptorMetaFactoryProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  AuthenticatingUrlLoaderInterceptorMetaFactoryProxyImpl.unbound() : super.unbound();

  static AuthenticatingUrlLoaderInterceptorMetaFactoryProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new AuthenticatingUrlLoaderInterceptorMetaFactoryProxyImpl.fromEndpoint(endpoint);

  String get name => AuthenticatingUrlLoaderInterceptorMetaFactoryName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  String toString() {
    var superString = super.toString();
    return "AuthenticatingUrlLoaderInterceptorMetaFactoryProxyImpl($superString)";
  }
}


class _AuthenticatingUrlLoaderInterceptorMetaFactoryProxyCalls implements AuthenticatingUrlLoaderInterceptorMetaFactory {
  AuthenticatingUrlLoaderInterceptorMetaFactoryProxyImpl _proxyImpl;

  _AuthenticatingUrlLoaderInterceptorMetaFactoryProxyCalls(this._proxyImpl);
    void createUrlLoaderInterceptorFactory(Object factoryRequest, Object authenticationService) {
      assert(_proxyImpl.isBound);
      var params = new AuthenticatingUrlLoaderInterceptorMetaFactoryCreateUrlLoaderInterceptorFactoryParams();
      params.factoryRequest = factoryRequest;
      params.authenticationService = authenticationService;
      _proxyImpl.sendMessage(params, kAuthenticatingUrlLoaderInterceptorMetaFactory_createUrlLoaderInterceptorFactory_name);
    }
  
}


class AuthenticatingUrlLoaderInterceptorMetaFactoryProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  AuthenticatingUrlLoaderInterceptorMetaFactory ptr;
  final String name = AuthenticatingUrlLoaderInterceptorMetaFactoryName;

  AuthenticatingUrlLoaderInterceptorMetaFactoryProxy(AuthenticatingUrlLoaderInterceptorMetaFactoryProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _AuthenticatingUrlLoaderInterceptorMetaFactoryProxyCalls(proxyImpl);

  AuthenticatingUrlLoaderInterceptorMetaFactoryProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new AuthenticatingUrlLoaderInterceptorMetaFactoryProxyImpl.fromEndpoint(endpoint) {
    ptr = new _AuthenticatingUrlLoaderInterceptorMetaFactoryProxyCalls(impl);
  }

  AuthenticatingUrlLoaderInterceptorMetaFactoryProxy.fromHandle(core.MojoHandle handle) :
      impl = new AuthenticatingUrlLoaderInterceptorMetaFactoryProxyImpl.fromHandle(handle) {
    ptr = new _AuthenticatingUrlLoaderInterceptorMetaFactoryProxyCalls(impl);
  }

  AuthenticatingUrlLoaderInterceptorMetaFactoryProxy.unbound() :
      impl = new AuthenticatingUrlLoaderInterceptorMetaFactoryProxyImpl.unbound() {
    ptr = new _AuthenticatingUrlLoaderInterceptorMetaFactoryProxyCalls(impl);
  }

  static AuthenticatingUrlLoaderInterceptorMetaFactoryProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new AuthenticatingUrlLoaderInterceptorMetaFactoryProxy.fromEndpoint(endpoint);

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "AuthenticatingUrlLoaderInterceptorMetaFactoryProxy($impl)";
  }
}


class AuthenticatingUrlLoaderInterceptorMetaFactoryStub extends bindings.Stub {
  AuthenticatingUrlLoaderInterceptorMetaFactory _impl = null;

  AuthenticatingUrlLoaderInterceptorMetaFactoryStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  AuthenticatingUrlLoaderInterceptorMetaFactoryStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  AuthenticatingUrlLoaderInterceptorMetaFactoryStub.unbound() : super.unbound();

  static AuthenticatingUrlLoaderInterceptorMetaFactoryStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new AuthenticatingUrlLoaderInterceptorMetaFactoryStub.fromEndpoint(endpoint);

  static const String name = AuthenticatingUrlLoaderInterceptorMetaFactoryName;



  Future<bindings.Message> handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    assert(_impl != null);
    switch (message.header.type) {
      case kAuthenticatingUrlLoaderInterceptorMetaFactory_createUrlLoaderInterceptorFactory_name:
        var params = AuthenticatingUrlLoaderInterceptorMetaFactoryCreateUrlLoaderInterceptorFactoryParams.deserialize(
            message.payload);
        _impl.createUrlLoaderInterceptorFactory(params.factoryRequest, params.authenticationService);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  AuthenticatingUrlLoaderInterceptorMetaFactory get impl => _impl;
  set impl(AuthenticatingUrlLoaderInterceptorMetaFactory d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "AuthenticatingUrlLoaderInterceptorMetaFactoryStub($superString)";
  }

  int get version => 0;
}


