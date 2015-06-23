// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library asset_bundle_mojom;

import 'dart:async';

import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;


class AssetBundleGetAsStreamParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  String assetName = null;

  AssetBundleGetAsStreamParams() : super(kVersions.last.size);

  static AssetBundleGetAsStreamParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static AssetBundleGetAsStreamParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    AssetBundleGetAsStreamParams result = new AssetBundleGetAsStreamParams();

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
      
      result.assetName = decoder0.decodeString(8, false);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeString(assetName, 8, false);
  }

  String toString() {
    return "AssetBundleGetAsStreamParams("
           "assetName: $assetName" ")";
  }
}

class AssetBundleGetAsStreamResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  core.MojoDataPipeConsumer assetData = null;

  AssetBundleGetAsStreamResponseParams() : super(kVersions.last.size);

  static AssetBundleGetAsStreamResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static AssetBundleGetAsStreamResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    AssetBundleGetAsStreamResponseParams result = new AssetBundleGetAsStreamResponseParams();

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
      
      result.assetData = decoder0.decodeConsumerHandle(8, false);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeConsumerHandle(assetData, 8, false);
  }

  String toString() {
    return "AssetBundleGetAsStreamResponseParams("
           "assetData: $assetData" ")";
  }
}

class AssetUnpackerUnpackZipStreamParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  core.MojoDataPipeConsumer zippedAssets = null;
  Object assetBundle = null;

  AssetUnpackerUnpackZipStreamParams() : super(kVersions.last.size);

  static AssetUnpackerUnpackZipStreamParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static AssetUnpackerUnpackZipStreamParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    AssetUnpackerUnpackZipStreamParams result = new AssetUnpackerUnpackZipStreamParams();

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
      
      result.zippedAssets = decoder0.decodeConsumerHandle(8, false);
    }
    if (mainDataHeader.version >= 0) {
      
      result.assetBundle = decoder0.decodeInterfaceRequest(12, false, AssetBundleStub.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeConsumerHandle(zippedAssets, 8, false);
    
    encoder0.encodeInterfaceRequest(assetBundle, 12, false);
  }

  String toString() {
    return "AssetUnpackerUnpackZipStreamParams("
           "zippedAssets: $zippedAssets" ", "
           "assetBundle: $assetBundle" ")";
  }
}

const int kAssetBundle_getAsStream_name = 0;

const String AssetBundleName =
      'mojo::asset_bundle::AssetBundle';

abstract class AssetBundle {
  Future<AssetBundleGetAsStreamResponseParams> getAsStream(String assetName,[Function responseFactory = null]);

}


class AssetBundleProxyImpl extends bindings.Proxy {
  AssetBundleProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  AssetBundleProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  AssetBundleProxyImpl.unbound() : super.unbound();

  static AssetBundleProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For AssetBundleProxyImpl"));
    return new AssetBundleProxyImpl.fromEndpoint(endpoint);
  }

  String get name => AssetBundleName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case kAssetBundle_getAsStream_name:
        var r = AssetBundleGetAsStreamResponseParams.deserialize(
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
    return "AssetBundleProxyImpl($superString)";
  }
}


class _AssetBundleProxyCalls implements AssetBundle {
  AssetBundleProxyImpl _proxyImpl;

  _AssetBundleProxyCalls(this._proxyImpl);
    Future<AssetBundleGetAsStreamResponseParams> getAsStream(String assetName,[Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new AssetBundleGetAsStreamParams();
      params.assetName = assetName;
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kAssetBundle_getAsStream_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
}


class AssetBundleProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  AssetBundle ptr;
  final String name = AssetBundleName;

  AssetBundleProxy(AssetBundleProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _AssetBundleProxyCalls(proxyImpl);

  AssetBundleProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new AssetBundleProxyImpl.fromEndpoint(endpoint) {
    ptr = new _AssetBundleProxyCalls(impl);
  }

  AssetBundleProxy.fromHandle(core.MojoHandle handle) :
      impl = new AssetBundleProxyImpl.fromHandle(handle) {
    ptr = new _AssetBundleProxyCalls(impl);
  }

  AssetBundleProxy.unbound() :
      impl = new AssetBundleProxyImpl.unbound() {
    ptr = new _AssetBundleProxyCalls(impl);
  }

  static AssetBundleProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For AssetBundleProxy"));
    return new AssetBundleProxy.fromEndpoint(endpoint);
  }

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "AssetBundleProxy($impl)";
  }
}


class AssetBundleStub extends bindings.Stub {
  AssetBundle _impl = null;

  AssetBundleStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  AssetBundleStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  AssetBundleStub.unbound() : super.unbound();

  static AssetBundleStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For AssetBundleStub"));
    return new AssetBundleStub.fromEndpoint(endpoint);
  }

  static const String name = AssetBundleName;


  AssetBundleGetAsStreamResponseParams _AssetBundleGetAsStreamResponseParamsFactory(core.MojoDataPipeConsumer assetData) {
    var result = new AssetBundleGetAsStreamResponseParams();
    result.assetData = assetData;
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
      case kAssetBundle_getAsStream_name:
        var params = AssetBundleGetAsStreamParams.deserialize(
            message.payload);
        return _impl.getAsStream(params.assetName,_AssetBundleGetAsStreamResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kAssetBundle_getAsStream_name,
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

  AssetBundle get impl => _impl;
  set impl(AssetBundle d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "AssetBundleStub($superString)";
  }

  int get version => 0;
}

const int kAssetUnpacker_unpackZipStream_name = 0;

const String AssetUnpackerName =
      'mojo::asset_bundle::AssetUnpacker';

abstract class AssetUnpacker {
  void unpackZipStream(core.MojoDataPipeConsumer zippedAssets, Object assetBundle);

}


class AssetUnpackerProxyImpl extends bindings.Proxy {
  AssetUnpackerProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  AssetUnpackerProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  AssetUnpackerProxyImpl.unbound() : super.unbound();

  static AssetUnpackerProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For AssetUnpackerProxyImpl"));
    return new AssetUnpackerProxyImpl.fromEndpoint(endpoint);
  }

  String get name => AssetUnpackerName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  String toString() {
    var superString = super.toString();
    return "AssetUnpackerProxyImpl($superString)";
  }
}


class _AssetUnpackerProxyCalls implements AssetUnpacker {
  AssetUnpackerProxyImpl _proxyImpl;

  _AssetUnpackerProxyCalls(this._proxyImpl);
    void unpackZipStream(core.MojoDataPipeConsumer zippedAssets, Object assetBundle) {
      assert(_proxyImpl.isBound);
      var params = new AssetUnpackerUnpackZipStreamParams();
      params.zippedAssets = zippedAssets;
      params.assetBundle = assetBundle;
      _proxyImpl.sendMessage(params, kAssetUnpacker_unpackZipStream_name);
    }
  
}


class AssetUnpackerProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  AssetUnpacker ptr;
  final String name = AssetUnpackerName;

  AssetUnpackerProxy(AssetUnpackerProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _AssetUnpackerProxyCalls(proxyImpl);

  AssetUnpackerProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new AssetUnpackerProxyImpl.fromEndpoint(endpoint) {
    ptr = new _AssetUnpackerProxyCalls(impl);
  }

  AssetUnpackerProxy.fromHandle(core.MojoHandle handle) :
      impl = new AssetUnpackerProxyImpl.fromHandle(handle) {
    ptr = new _AssetUnpackerProxyCalls(impl);
  }

  AssetUnpackerProxy.unbound() :
      impl = new AssetUnpackerProxyImpl.unbound() {
    ptr = new _AssetUnpackerProxyCalls(impl);
  }

  static AssetUnpackerProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For AssetUnpackerProxy"));
    return new AssetUnpackerProxy.fromEndpoint(endpoint);
  }

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "AssetUnpackerProxy($impl)";
  }
}


class AssetUnpackerStub extends bindings.Stub {
  AssetUnpacker _impl = null;

  AssetUnpackerStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  AssetUnpackerStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  AssetUnpackerStub.unbound() : super.unbound();

  static AssetUnpackerStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For AssetUnpackerStub"));
    return new AssetUnpackerStub.fromEndpoint(endpoint);
  }

  static const String name = AssetUnpackerName;



  Future<bindings.Message> handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    assert(_impl != null);
    switch (message.header.type) {
      case kAssetUnpacker_unpackZipStream_name:
        var params = AssetUnpackerUnpackZipStreamParams.deserialize(
            message.payload);
        _impl.unpackZipStream(params.zippedAssets, params.assetBundle);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  AssetUnpacker get impl => _impl;
  set impl(AssetUnpacker d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "AssetUnpackerStub($superString)";
  }

  int get version => 0;
}


