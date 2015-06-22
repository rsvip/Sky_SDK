// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library authentication_mojom;

import 'dart:async';

import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;


class AuthenticationServiceSelectAccountParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  bool returnLastSelected = false;

  AuthenticationServiceSelectAccountParams() : super(kVersions.last.size);

  static AuthenticationServiceSelectAccountParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static AuthenticationServiceSelectAccountParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    AuthenticationServiceSelectAccountParams result = new AuthenticationServiceSelectAccountParams();

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
      
      result.returnLastSelected = decoder0.decodeBool(8, 0);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeBool(returnLastSelected, 8, 0);
  }

  String toString() {
    return "AuthenticationServiceSelectAccountParams("
           "returnLastSelected: $returnLastSelected" ")";
  }
}

class AuthenticationServiceSelectAccountResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  String username = null;
  String error = null;

  AuthenticationServiceSelectAccountResponseParams() : super(kVersions.last.size);

  static AuthenticationServiceSelectAccountResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static AuthenticationServiceSelectAccountResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    AuthenticationServiceSelectAccountResponseParams result = new AuthenticationServiceSelectAccountResponseParams();

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
      
      result.username = decoder0.decodeString(8, true);
    }
    if (mainDataHeader.version >= 0) {
      
      result.error = decoder0.decodeString(16, true);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeString(username, 8, true);
    
    encoder0.encodeString(error, 16, true);
  }

  String toString() {
    return "AuthenticationServiceSelectAccountResponseParams("
           "username: $username" ", "
           "error: $error" ")";
  }
}

class AuthenticationServiceGetOAuth2TokenParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  String username = null;
  List<String> scopes = null;

  AuthenticationServiceGetOAuth2TokenParams() : super(kVersions.last.size);

  static AuthenticationServiceGetOAuth2TokenParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static AuthenticationServiceGetOAuth2TokenParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    AuthenticationServiceGetOAuth2TokenParams result = new AuthenticationServiceGetOAuth2TokenParams();

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
      
      result.username = decoder0.decodeString(8, false);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(16, false);
      {
        var si1 = decoder1.decodeDataHeaderForPointerArray(bindings.kUnspecifiedArrayLength);
        result.scopes = new List<String>(si1.numElements);
        for (int i1 = 0; i1 < si1.numElements; ++i1) {
          
          result.scopes[i1] = decoder1.decodeString(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i1, false);
        }
      }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeString(username, 8, false);
    
    if (scopes == null) {
      encoder0.encodeNullPointer(16, false);
    } else {
      var encoder1 = encoder0.encodePointerArray(scopes.length, 16, bindings.kUnspecifiedArrayLength);
      for (int i0 = 0; i0 < scopes.length; ++i0) {
        
        encoder1.encodeString(scopes[i0], bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i0, false);
      }
    }
  }

  String toString() {
    return "AuthenticationServiceGetOAuth2TokenParams("
           "username: $username" ", "
           "scopes: $scopes" ")";
  }
}

class AuthenticationServiceGetOAuth2TokenResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  String token = null;
  String error = null;

  AuthenticationServiceGetOAuth2TokenResponseParams() : super(kVersions.last.size);

  static AuthenticationServiceGetOAuth2TokenResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static AuthenticationServiceGetOAuth2TokenResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    AuthenticationServiceGetOAuth2TokenResponseParams result = new AuthenticationServiceGetOAuth2TokenResponseParams();

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
      
      result.token = decoder0.decodeString(8, true);
    }
    if (mainDataHeader.version >= 0) {
      
      result.error = decoder0.decodeString(16, true);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeString(token, 8, true);
    
    encoder0.encodeString(error, 16, true);
  }

  String toString() {
    return "AuthenticationServiceGetOAuth2TokenResponseParams("
           "token: $token" ", "
           "error: $error" ")";
  }
}

class AuthenticationServiceClearOAuth2TokenParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  String token = null;

  AuthenticationServiceClearOAuth2TokenParams() : super(kVersions.last.size);

  static AuthenticationServiceClearOAuth2TokenParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static AuthenticationServiceClearOAuth2TokenParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    AuthenticationServiceClearOAuth2TokenParams result = new AuthenticationServiceClearOAuth2TokenParams();

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
      
      result.token = decoder0.decodeString(8, false);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeString(token, 8, false);
  }

  String toString() {
    return "AuthenticationServiceClearOAuth2TokenParams("
           "token: $token" ")";
  }
}

const int kAuthenticationService_selectAccount_name = 0;
const int kAuthenticationService_getOAuth2Token_name = 1;
const int kAuthenticationService_clearOAuth2Token_name = 2;

const String AuthenticationServiceName =
      'authentication::AuthenticationService';

abstract class AuthenticationService {
  Future<AuthenticationServiceSelectAccountResponseParams> selectAccount(bool returnLastSelected,[Function responseFactory = null]);
  Future<AuthenticationServiceGetOAuth2TokenResponseParams> getOAuth2Token(String username,List<String> scopes,[Function responseFactory = null]);
  void clearOAuth2Token(String token);

}


class AuthenticationServiceProxyImpl extends bindings.Proxy {
  AuthenticationServiceProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  AuthenticationServiceProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  AuthenticationServiceProxyImpl.unbound() : super.unbound();

  static AuthenticationServiceProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For AuthenticationServiceProxyImpl"));
    return new AuthenticationServiceProxyImpl.fromEndpoint(endpoint);
  }

  String get name => AuthenticationServiceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case kAuthenticationService_selectAccount_name:
        var r = AuthenticationServiceSelectAccountResponseParams.deserialize(
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
      case kAuthenticationService_getOAuth2Token_name:
        var r = AuthenticationServiceGetOAuth2TokenResponseParams.deserialize(
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
    return "AuthenticationServiceProxyImpl($superString)";
  }
}


class _AuthenticationServiceProxyCalls implements AuthenticationService {
  AuthenticationServiceProxyImpl _proxyImpl;

  _AuthenticationServiceProxyCalls(this._proxyImpl);
    Future<AuthenticationServiceSelectAccountResponseParams> selectAccount(bool returnLastSelected,[Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new AuthenticationServiceSelectAccountParams();
      params.returnLastSelected = returnLastSelected;
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kAuthenticationService_selectAccount_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
    Future<AuthenticationServiceGetOAuth2TokenResponseParams> getOAuth2Token(String username,List<String> scopes,[Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new AuthenticationServiceGetOAuth2TokenParams();
      params.username = username;
      params.scopes = scopes;
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kAuthenticationService_getOAuth2Token_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
    void clearOAuth2Token(String token) {
      assert(_proxyImpl.isBound);
      var params = new AuthenticationServiceClearOAuth2TokenParams();
      params.token = token;
      _proxyImpl.sendMessage(params, kAuthenticationService_clearOAuth2Token_name);
    }
  
}


class AuthenticationServiceProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  AuthenticationService ptr;
  final String name = AuthenticationServiceName;

  AuthenticationServiceProxy(AuthenticationServiceProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _AuthenticationServiceProxyCalls(proxyImpl);

  AuthenticationServiceProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new AuthenticationServiceProxyImpl.fromEndpoint(endpoint) {
    ptr = new _AuthenticationServiceProxyCalls(impl);
  }

  AuthenticationServiceProxy.fromHandle(core.MojoHandle handle) :
      impl = new AuthenticationServiceProxyImpl.fromHandle(handle) {
    ptr = new _AuthenticationServiceProxyCalls(impl);
  }

  AuthenticationServiceProxy.unbound() :
      impl = new AuthenticationServiceProxyImpl.unbound() {
    ptr = new _AuthenticationServiceProxyCalls(impl);
  }

  static AuthenticationServiceProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For AuthenticationServiceProxy"));
    return new AuthenticationServiceProxy.fromEndpoint(endpoint);
  }

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "AuthenticationServiceProxy($impl)";
  }
}


class AuthenticationServiceStub extends bindings.Stub {
  AuthenticationService _impl = null;

  AuthenticationServiceStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  AuthenticationServiceStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  AuthenticationServiceStub.unbound() : super.unbound();

  static AuthenticationServiceStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For AuthenticationServiceStub"));
    return new AuthenticationServiceStub.fromEndpoint(endpoint);
  }

  static const String name = AuthenticationServiceName;


  AuthenticationServiceSelectAccountResponseParams _AuthenticationServiceSelectAccountResponseParamsFactory(String username, String error) {
    var result = new AuthenticationServiceSelectAccountResponseParams();
    result.username = username;
    result.error = error;
    return result;
  }
  AuthenticationServiceGetOAuth2TokenResponseParams _AuthenticationServiceGetOAuth2TokenResponseParamsFactory(String token, String error) {
    var result = new AuthenticationServiceGetOAuth2TokenResponseParams();
    result.token = token;
    result.error = error;
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
      case kAuthenticationService_selectAccount_name:
        var params = AuthenticationServiceSelectAccountParams.deserialize(
            message.payload);
        return _impl.selectAccount(params.returnLastSelected,_AuthenticationServiceSelectAccountResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kAuthenticationService_selectAccount_name,
                message.header.requestId,
                bindings.MessageHeader.kMessageIsResponse);
          }
        });
        break;
      case kAuthenticationService_getOAuth2Token_name:
        var params = AuthenticationServiceGetOAuth2TokenParams.deserialize(
            message.payload);
        return _impl.getOAuth2Token(params.username,params.scopes,_AuthenticationServiceGetOAuth2TokenResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kAuthenticationService_getOAuth2Token_name,
                message.header.requestId,
                bindings.MessageHeader.kMessageIsResponse);
          }
        });
        break;
      case kAuthenticationService_clearOAuth2Token_name:
        var params = AuthenticationServiceClearOAuth2TokenParams.deserialize(
            message.payload);
        _impl.clearOAuth2Token(params.token);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  AuthenticationService get impl => _impl;
  set impl(AuthenticationService d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "AuthenticationServiceStub($superString)";
  }

  int get version => 0;
}


