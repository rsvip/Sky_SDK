// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library http_connection_mojom;

import 'dart:async';

import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojom/mojo/network_error.mojom.dart' as network_error_mojom;
import 'package:mojom/mojo/http_message.mojom.dart' as http_message_mojom;
import 'package:mojom/mojo/web_socket.mojom.dart' as web_socket_mojom;


class HttpConnectionSetSendBufferSizeParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  int size = 0;

  HttpConnectionSetSendBufferSizeParams() : super(kVersions.last.size);

  static HttpConnectionSetSendBufferSizeParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static HttpConnectionSetSendBufferSizeParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    HttpConnectionSetSendBufferSizeParams result = new HttpConnectionSetSendBufferSizeParams();

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
      
      result.size = decoder0.decodeUint32(8);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeUint32(size, 8);
  }

  String toString() {
    return "HttpConnectionSetSendBufferSizeParams("
           "size: $size" ")";
  }
}

class HttpConnectionSetSendBufferSizeResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  network_error_mojom.NetworkError result = null;

  HttpConnectionSetSendBufferSizeResponseParams() : super(kVersions.last.size);

  static HttpConnectionSetSendBufferSizeResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static HttpConnectionSetSendBufferSizeResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    HttpConnectionSetSendBufferSizeResponseParams result = new HttpConnectionSetSendBufferSizeResponseParams();

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
      result.result = network_error_mojom.NetworkError.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(result, 8, false);
  }

  String toString() {
    return "HttpConnectionSetSendBufferSizeResponseParams("
           "result: $result" ")";
  }
}

class HttpConnectionSetReceiveBufferSizeParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  int size = 0;

  HttpConnectionSetReceiveBufferSizeParams() : super(kVersions.last.size);

  static HttpConnectionSetReceiveBufferSizeParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static HttpConnectionSetReceiveBufferSizeParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    HttpConnectionSetReceiveBufferSizeParams result = new HttpConnectionSetReceiveBufferSizeParams();

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
      
      result.size = decoder0.decodeUint32(8);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeUint32(size, 8);
  }

  String toString() {
    return "HttpConnectionSetReceiveBufferSizeParams("
           "size: $size" ")";
  }
}

class HttpConnectionSetReceiveBufferSizeResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  network_error_mojom.NetworkError result = null;

  HttpConnectionSetReceiveBufferSizeResponseParams() : super(kVersions.last.size);

  static HttpConnectionSetReceiveBufferSizeResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static HttpConnectionSetReceiveBufferSizeResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    HttpConnectionSetReceiveBufferSizeResponseParams result = new HttpConnectionSetReceiveBufferSizeResponseParams();

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
      result.result = network_error_mojom.NetworkError.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(result, 8, false);
  }

  String toString() {
    return "HttpConnectionSetReceiveBufferSizeResponseParams("
           "result: $result" ")";
  }
}

class HttpConnectionDelegateOnReceivedRequestParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  http_message_mojom.HttpRequest request = null;

  HttpConnectionDelegateOnReceivedRequestParams() : super(kVersions.last.size);

  static HttpConnectionDelegateOnReceivedRequestParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static HttpConnectionDelegateOnReceivedRequestParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    HttpConnectionDelegateOnReceivedRequestParams result = new HttpConnectionDelegateOnReceivedRequestParams();

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
      result.request = http_message_mojom.HttpRequest.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(request, 8, false);
  }

  String toString() {
    return "HttpConnectionDelegateOnReceivedRequestParams("
           "request: $request" ")";
  }
}

class HttpConnectionDelegateOnReceivedRequestResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  http_message_mojom.HttpResponse response = null;

  HttpConnectionDelegateOnReceivedRequestResponseParams() : super(kVersions.last.size);

  static HttpConnectionDelegateOnReceivedRequestResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static HttpConnectionDelegateOnReceivedRequestResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    HttpConnectionDelegateOnReceivedRequestResponseParams result = new HttpConnectionDelegateOnReceivedRequestResponseParams();

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
      result.response = http_message_mojom.HttpResponse.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(response, 8, false);
  }

  String toString() {
    return "HttpConnectionDelegateOnReceivedRequestResponseParams("
           "response: $response" ")";
  }
}

class HttpConnectionDelegateOnReceivedWebSocketRequestParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  http_message_mojom.HttpRequest request = null;

  HttpConnectionDelegateOnReceivedWebSocketRequestParams() : super(kVersions.last.size);

  static HttpConnectionDelegateOnReceivedWebSocketRequestParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static HttpConnectionDelegateOnReceivedWebSocketRequestParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    HttpConnectionDelegateOnReceivedWebSocketRequestParams result = new HttpConnectionDelegateOnReceivedWebSocketRequestParams();

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
      result.request = http_message_mojom.HttpRequest.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(request, 8, false);
  }

  String toString() {
    return "HttpConnectionDelegateOnReceivedWebSocketRequestParams("
           "request: $request" ")";
  }
}

class HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  Object webSocket = null;
  core.MojoDataPipeConsumer sendStream = null;
  Object client = null;

  HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams() : super(kVersions.last.size);

  static HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams result = new HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams();

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
      
      result.webSocket = decoder0.decodeInterfaceRequest(8, true, web_socket_mojom.WebSocketStub.newFromEndpoint);
    }
    if (mainDataHeader.version >= 0) {
      
      result.sendStream = decoder0.decodeConsumerHandle(12, true);
    }
    if (mainDataHeader.version >= 0) {
      
      result.client = decoder0.decodeServiceInterface(16, true, web_socket_mojom.WebSocketClientProxy.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeInterfaceRequest(webSocket, 8, true);
    
    encoder0.encodeConsumerHandle(sendStream, 12, true);
    
    encoder0.encodeInterface(client, 16, true);
  }

  String toString() {
    return "HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams("
           "webSocket: $webSocket" ", "
           "sendStream: $sendStream" ", "
           "client: $client" ")";
  }
}

const int kHttpConnection_setSendBufferSize_name = 0;
const int kHttpConnection_setReceiveBufferSize_name = 1;

const String HttpConnectionName =
      'mojo::HttpConnection';

abstract class HttpConnection {
  Future<HttpConnectionSetSendBufferSizeResponseParams> setSendBufferSize(int size,[Function responseFactory = null]);
  Future<HttpConnectionSetReceiveBufferSizeResponseParams> setReceiveBufferSize(int size,[Function responseFactory = null]);

}


class HttpConnectionProxyImpl extends bindings.Proxy {
  HttpConnectionProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  HttpConnectionProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  HttpConnectionProxyImpl.unbound() : super.unbound();

  static HttpConnectionProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new HttpConnectionProxyImpl.fromEndpoint(endpoint);

  String get name => HttpConnectionName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case kHttpConnection_setSendBufferSize_name:
        var r = HttpConnectionSetSendBufferSizeResponseParams.deserialize(
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
      case kHttpConnection_setReceiveBufferSize_name:
        var r = HttpConnectionSetReceiveBufferSizeResponseParams.deserialize(
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
    return "HttpConnectionProxyImpl($superString)";
  }
}


class _HttpConnectionProxyCalls implements HttpConnection {
  HttpConnectionProxyImpl _proxyImpl;

  _HttpConnectionProxyCalls(this._proxyImpl);
    Future<HttpConnectionSetSendBufferSizeResponseParams> setSendBufferSize(int size,[Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new HttpConnectionSetSendBufferSizeParams();
      params.size = size;
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kHttpConnection_setSendBufferSize_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
    Future<HttpConnectionSetReceiveBufferSizeResponseParams> setReceiveBufferSize(int size,[Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new HttpConnectionSetReceiveBufferSizeParams();
      params.size = size;
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kHttpConnection_setReceiveBufferSize_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
}


class HttpConnectionProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  HttpConnection ptr;
  final String name = HttpConnectionName;

  HttpConnectionProxy(HttpConnectionProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _HttpConnectionProxyCalls(proxyImpl);

  HttpConnectionProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new HttpConnectionProxyImpl.fromEndpoint(endpoint) {
    ptr = new _HttpConnectionProxyCalls(impl);
  }

  HttpConnectionProxy.fromHandle(core.MojoHandle handle) :
      impl = new HttpConnectionProxyImpl.fromHandle(handle) {
    ptr = new _HttpConnectionProxyCalls(impl);
  }

  HttpConnectionProxy.unbound() :
      impl = new HttpConnectionProxyImpl.unbound() {
    ptr = new _HttpConnectionProxyCalls(impl);
  }

  static HttpConnectionProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new HttpConnectionProxy.fromEndpoint(endpoint);

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "HttpConnectionProxy($impl)";
  }
}


class HttpConnectionStub extends bindings.Stub {
  HttpConnection _impl = null;

  HttpConnectionStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  HttpConnectionStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  HttpConnectionStub.unbound() : super.unbound();

  static HttpConnectionStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new HttpConnectionStub.fromEndpoint(endpoint);

  static const String name = HttpConnectionName;


  HttpConnectionSetSendBufferSizeResponseParams _HttpConnectionSetSendBufferSizeResponseParamsFactory(network_error_mojom.NetworkError result) {
    var result = new HttpConnectionSetSendBufferSizeResponseParams();
    result.result = result;
    return result;
  }
  HttpConnectionSetReceiveBufferSizeResponseParams _HttpConnectionSetReceiveBufferSizeResponseParamsFactory(network_error_mojom.NetworkError result) {
    var result = new HttpConnectionSetReceiveBufferSizeResponseParams();
    result.result = result;
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
      case kHttpConnection_setSendBufferSize_name:
        var params = HttpConnectionSetSendBufferSizeParams.deserialize(
            message.payload);
        return _impl.setSendBufferSize(params.size,_HttpConnectionSetSendBufferSizeResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kHttpConnection_setSendBufferSize_name,
                message.header.requestId,
                bindings.MessageHeader.kMessageIsResponse);
          }
        });
        break;
      case kHttpConnection_setReceiveBufferSize_name:
        var params = HttpConnectionSetReceiveBufferSizeParams.deserialize(
            message.payload);
        return _impl.setReceiveBufferSize(params.size,_HttpConnectionSetReceiveBufferSizeResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kHttpConnection_setReceiveBufferSize_name,
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

  HttpConnection get impl => _impl;
  set impl(HttpConnection d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "HttpConnectionStub($superString)";
  }

  int get version => 0;
}

const int kHttpConnectionDelegate_onReceivedRequest_name = 0;
const int kHttpConnectionDelegate_onReceivedWebSocketRequest_name = 1;

const String HttpConnectionDelegateName =
      'mojo::HttpConnectionDelegate';

abstract class HttpConnectionDelegate {
  Future<HttpConnectionDelegateOnReceivedRequestResponseParams> onReceivedRequest(http_message_mojom.HttpRequest request,[Function responseFactory = null]);
  Future<HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams> onReceivedWebSocketRequest(http_message_mojom.HttpRequest request,[Function responseFactory = null]);

}


class HttpConnectionDelegateProxyImpl extends bindings.Proxy {
  HttpConnectionDelegateProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  HttpConnectionDelegateProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  HttpConnectionDelegateProxyImpl.unbound() : super.unbound();

  static HttpConnectionDelegateProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new HttpConnectionDelegateProxyImpl.fromEndpoint(endpoint);

  String get name => HttpConnectionDelegateName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case kHttpConnectionDelegate_onReceivedRequest_name:
        var r = HttpConnectionDelegateOnReceivedRequestResponseParams.deserialize(
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
      case kHttpConnectionDelegate_onReceivedWebSocketRequest_name:
        var r = HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams.deserialize(
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
    return "HttpConnectionDelegateProxyImpl($superString)";
  }
}


class _HttpConnectionDelegateProxyCalls implements HttpConnectionDelegate {
  HttpConnectionDelegateProxyImpl _proxyImpl;

  _HttpConnectionDelegateProxyCalls(this._proxyImpl);
    Future<HttpConnectionDelegateOnReceivedRequestResponseParams> onReceivedRequest(http_message_mojom.HttpRequest request,[Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new HttpConnectionDelegateOnReceivedRequestParams();
      params.request = request;
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kHttpConnectionDelegate_onReceivedRequest_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
    Future<HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams> onReceivedWebSocketRequest(http_message_mojom.HttpRequest request,[Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new HttpConnectionDelegateOnReceivedWebSocketRequestParams();
      params.request = request;
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kHttpConnectionDelegate_onReceivedWebSocketRequest_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
}


class HttpConnectionDelegateProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  HttpConnectionDelegate ptr;
  final String name = HttpConnectionDelegateName;

  HttpConnectionDelegateProxy(HttpConnectionDelegateProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _HttpConnectionDelegateProxyCalls(proxyImpl);

  HttpConnectionDelegateProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new HttpConnectionDelegateProxyImpl.fromEndpoint(endpoint) {
    ptr = new _HttpConnectionDelegateProxyCalls(impl);
  }

  HttpConnectionDelegateProxy.fromHandle(core.MojoHandle handle) :
      impl = new HttpConnectionDelegateProxyImpl.fromHandle(handle) {
    ptr = new _HttpConnectionDelegateProxyCalls(impl);
  }

  HttpConnectionDelegateProxy.unbound() :
      impl = new HttpConnectionDelegateProxyImpl.unbound() {
    ptr = new _HttpConnectionDelegateProxyCalls(impl);
  }

  static HttpConnectionDelegateProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new HttpConnectionDelegateProxy.fromEndpoint(endpoint);

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "HttpConnectionDelegateProxy($impl)";
  }
}


class HttpConnectionDelegateStub extends bindings.Stub {
  HttpConnectionDelegate _impl = null;

  HttpConnectionDelegateStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  HttpConnectionDelegateStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  HttpConnectionDelegateStub.unbound() : super.unbound();

  static HttpConnectionDelegateStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new HttpConnectionDelegateStub.fromEndpoint(endpoint);

  static const String name = HttpConnectionDelegateName;


  HttpConnectionDelegateOnReceivedRequestResponseParams _HttpConnectionDelegateOnReceivedRequestResponseParamsFactory(http_message_mojom.HttpResponse response) {
    var result = new HttpConnectionDelegateOnReceivedRequestResponseParams();
    result.response = response;
    return result;
  }
  HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams _HttpConnectionDelegateOnReceivedWebSocketRequestResponseParamsFactory(Object webSocket, core.MojoDataPipeConsumer sendStream, Object client) {
    var result = new HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams();
    result.webSocket = webSocket;
    result.sendStream = sendStream;
    result.client = client;
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
      case kHttpConnectionDelegate_onReceivedRequest_name:
        var params = HttpConnectionDelegateOnReceivedRequestParams.deserialize(
            message.payload);
        return _impl.onReceivedRequest(params.request,_HttpConnectionDelegateOnReceivedRequestResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kHttpConnectionDelegate_onReceivedRequest_name,
                message.header.requestId,
                bindings.MessageHeader.kMessageIsResponse);
          }
        });
        break;
      case kHttpConnectionDelegate_onReceivedWebSocketRequest_name:
        var params = HttpConnectionDelegateOnReceivedWebSocketRequestParams.deserialize(
            message.payload);
        return _impl.onReceivedWebSocketRequest(params.request,_HttpConnectionDelegateOnReceivedWebSocketRequestResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kHttpConnectionDelegate_onReceivedWebSocketRequest_name,
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

  HttpConnectionDelegate get impl => _impl;
  set impl(HttpConnectionDelegate d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "HttpConnectionDelegateStub($superString)";
  }

  int get version => 0;
}


