// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library host_resolver_mojom;

import 'dart:async';

import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojom/mojo/network_error.mojom.dart' as network_error_mojom;
import 'package:mojom/mojo/net_address.mojom.dart' as net_address_mojom;


class HostResolverGetHostAddressesParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  String host = null;
  int family = 0;

  HostResolverGetHostAddressesParams() : super(kVersions.last.size);

  static HostResolverGetHostAddressesParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static HostResolverGetHostAddressesParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    HostResolverGetHostAddressesParams result = new HostResolverGetHostAddressesParams();

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
      
      result.host = decoder0.decodeString(8, false);
    }
    if (mainDataHeader.version >= 0) {
      
      result.family = decoder0.decodeInt32(16);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeString(host, 8, false);
    
    encoder0.encodeInt32(family, 16);
  }

  String toString() {
    return "HostResolverGetHostAddressesParams("
           "host: $host" ", "
           "family: $family" ")";
  }
}

class HostResolverGetHostAddressesResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  network_error_mojom.NetworkError result = null;
  List<net_address_mojom.NetAddress> addresses = null;

  HostResolverGetHostAddressesResponseParams() : super(kVersions.last.size);

  static HostResolverGetHostAddressesResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static HostResolverGetHostAddressesResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    HostResolverGetHostAddressesResponseParams result = new HostResolverGetHostAddressesResponseParams();

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
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(16, true);
      if (decoder1 == null) {
        result.addresses = null;
      } else {
        var si1 = decoder1.decodeDataHeaderForPointerArray(bindings.kUnspecifiedArrayLength);
        result.addresses = new List<net_address_mojom.NetAddress>(si1.numElements);
        for (int i1 = 0; i1 < si1.numElements; ++i1) {
          
          var decoder2 = decoder1.decodePointer(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i1, false);
          result.addresses[i1] = net_address_mojom.NetAddress.decode(decoder2);
        }
      }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(result, 8, false);
    
    if (addresses == null) {
      encoder0.encodeNullPointer(16, true);
    } else {
      var encoder1 = encoder0.encodePointerArray(addresses.length, 16, bindings.kUnspecifiedArrayLength);
      for (int i0 = 0; i0 < addresses.length; ++i0) {
        
        encoder1.encodeStruct(addresses[i0], bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i0, false);
      }
    }
  }

  String toString() {
    return "HostResolverGetHostAddressesResponseParams("
           "result: $result" ", "
           "addresses: $addresses" ")";
  }
}

const int kHostResolver_getHostAddresses_name = 0;

const String HostResolverName =
      'mojo::HostResolver';

abstract class HostResolver {
  Future<HostResolverGetHostAddressesResponseParams> getHostAddresses(String host,int family,[Function responseFactory = null]);

}


class HostResolverProxyImpl extends bindings.Proxy {
  HostResolverProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  HostResolverProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  HostResolverProxyImpl.unbound() : super.unbound();

  static HostResolverProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For HostResolverProxyImpl"));
    return new HostResolverProxyImpl.fromEndpoint(endpoint);
  }

  String get name => HostResolverName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case kHostResolver_getHostAddresses_name:
        var r = HostResolverGetHostAddressesResponseParams.deserialize(
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
    return "HostResolverProxyImpl($superString)";
  }
}


class _HostResolverProxyCalls implements HostResolver {
  HostResolverProxyImpl _proxyImpl;

  _HostResolverProxyCalls(this._proxyImpl);
    Future<HostResolverGetHostAddressesResponseParams> getHostAddresses(String host,int family,[Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new HostResolverGetHostAddressesParams();
      params.host = host;
      params.family = family;
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kHostResolver_getHostAddresses_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
}


class HostResolverProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  HostResolver ptr;
  final String name = HostResolverName;

  HostResolverProxy(HostResolverProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _HostResolverProxyCalls(proxyImpl);

  HostResolverProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new HostResolverProxyImpl.fromEndpoint(endpoint) {
    ptr = new _HostResolverProxyCalls(impl);
  }

  HostResolverProxy.fromHandle(core.MojoHandle handle) :
      impl = new HostResolverProxyImpl.fromHandle(handle) {
    ptr = new _HostResolverProxyCalls(impl);
  }

  HostResolverProxy.unbound() :
      impl = new HostResolverProxyImpl.unbound() {
    ptr = new _HostResolverProxyCalls(impl);
  }

  static HostResolverProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For HostResolverProxy"));
    return new HostResolverProxy.fromEndpoint(endpoint);
  }

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "HostResolverProxy($impl)";
  }
}


class HostResolverStub extends bindings.Stub {
  HostResolver _impl = null;

  HostResolverStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  HostResolverStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  HostResolverStub.unbound() : super.unbound();

  static HostResolverStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For HostResolverStub"));
    return new HostResolverStub.fromEndpoint(endpoint);
  }

  static const String name = HostResolverName;


  HostResolverGetHostAddressesResponseParams _HostResolverGetHostAddressesResponseParamsFactory(network_error_mojom.NetworkError result, List<net_address_mojom.NetAddress> addresses) {
    var result = new HostResolverGetHostAddressesResponseParams();
    result.result = result;
    result.addresses = addresses;
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
      case kHostResolver_getHostAddresses_name:
        var params = HostResolverGetHostAddressesParams.deserialize(
            message.payload);
        return _impl.getHostAddresses(params.host,params.family,_HostResolverGetHostAddressesResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kHostResolver_getHostAddresses_name,
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

  HostResolver get impl => _impl;
  set impl(HostResolver d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "HostResolverStub($superString)";
  }

  int get version => 0;
}


