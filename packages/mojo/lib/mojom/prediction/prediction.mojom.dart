// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library prediction.mojom;

import 'dart:async';

import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;


class Settings extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  bool correctionEnabled = false;
  bool blockPotentiallyOffensive = false;
  bool spaceAwareGestureEnabled = false;

  Settings() : super(kVersions.last.size);

  static Settings deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static Settings decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    Settings result = new Settings();

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
      
      result.correctionEnabled = decoder0.decodeBool(8, 0);
    }
    if (mainDataHeader.version >= 0) {
      
      result.blockPotentiallyOffensive = decoder0.decodeBool(8, 1);
    }
    if (mainDataHeader.version >= 0) {
      
      result.spaceAwareGestureEnabled = decoder0.decodeBool(8, 2);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeBool(correctionEnabled, 8, 0);
    
    encoder0.encodeBool(blockPotentiallyOffensive, 8, 1);
    
    encoder0.encodeBool(spaceAwareGestureEnabled, 8, 2);
  }

  String toString() {
    return "Settings("
           "correctionEnabled: $correctionEnabled" ", "
           "blockPotentiallyOffensive: $blockPotentiallyOffensive" ", "
           "spaceAwareGestureEnabled: $spaceAwareGestureEnabled" ")";
  }
}

class PredictionInfo extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  List<String> previousWords = null;
  String currentWord = null;

  PredictionInfo() : super(kVersions.last.size);

  static PredictionInfo deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static PredictionInfo decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    PredictionInfo result = new PredictionInfo();

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
      {
        var si1 = decoder1.decodeDataHeaderForPointerArray(bindings.kUnspecifiedArrayLength);
        result.previousWords = new List<String>(si1.numElements);
        for (int i1 = 0; i1 < si1.numElements; ++i1) {
          
          result.previousWords[i1] = decoder1.decodeString(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i1, false);
        }
      }
    }
    if (mainDataHeader.version >= 0) {
      
      result.currentWord = decoder0.decodeString(16, false);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    if (previousWords == null) {
      encoder0.encodeNullPointer(8, false);
    } else {
      var encoder1 = encoder0.encodePointerArray(previousWords.length, 8, bindings.kUnspecifiedArrayLength);
      for (int i0 = 0; i0 < previousWords.length; ++i0) {
        
        encoder1.encodeString(previousWords[i0], bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i0, false);
      }
    }
    
    encoder0.encodeString(currentWord, 16, false);
  }

  String toString() {
    return "PredictionInfo("
           "previousWords: $previousWords" ", "
           "currentWord: $currentWord" ")";
  }
}

class PredictionServiceSetSettingsParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  Settings settings = null;

  PredictionServiceSetSettingsParams() : super(kVersions.last.size);

  static PredictionServiceSetSettingsParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static PredictionServiceSetSettingsParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    PredictionServiceSetSettingsParams result = new PredictionServiceSetSettingsParams();

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
      result.settings = Settings.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(settings, 8, false);
  }

  String toString() {
    return "PredictionServiceSetSettingsParams("
           "settings: $settings" ")";
  }
}

class PredictionServiceGetPredictionListParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  PredictionInfo predictionInfo = null;

  PredictionServiceGetPredictionListParams() : super(kVersions.last.size);

  static PredictionServiceGetPredictionListParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static PredictionServiceGetPredictionListParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    PredictionServiceGetPredictionListParams result = new PredictionServiceGetPredictionListParams();

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
      result.predictionInfo = PredictionInfo.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(predictionInfo, 8, false);
  }

  String toString() {
    return "PredictionServiceGetPredictionListParams("
           "predictionInfo: $predictionInfo" ")";
  }
}

class PredictionServiceGetPredictionListResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  List<String> predictionList = null;

  PredictionServiceGetPredictionListResponseParams() : super(kVersions.last.size);

  static PredictionServiceGetPredictionListResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static PredictionServiceGetPredictionListResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    PredictionServiceGetPredictionListResponseParams result = new PredictionServiceGetPredictionListResponseParams();

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
      if (decoder1 == null) {
        result.predictionList = null;
      } else {
        var si1 = decoder1.decodeDataHeaderForPointerArray(bindings.kUnspecifiedArrayLength);
        result.predictionList = new List<String>(si1.numElements);
        for (int i1 = 0; i1 < si1.numElements; ++i1) {
          
          result.predictionList[i1] = decoder1.decodeString(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i1, false);
        }
      }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    if (predictionList == null) {
      encoder0.encodeNullPointer(8, true);
    } else {
      var encoder1 = encoder0.encodePointerArray(predictionList.length, 8, bindings.kUnspecifiedArrayLength);
      for (int i0 = 0; i0 < predictionList.length; ++i0) {
        
        encoder1.encodeString(predictionList[i0], bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i0, false);
      }
    }
  }

  String toString() {
    return "PredictionServiceGetPredictionListResponseParams("
           "predictionList: $predictionList" ")";
  }
}

const int kPredictionService_setSettings_name = 0;
const int kPredictionService_getPredictionList_name = 1;

const String PredictionServiceName =
      'prediction::PredictionService';

abstract class PredictionService {
  void setSettings(Settings settings);
  Future<PredictionServiceGetPredictionListResponseParams> getPredictionList(PredictionInfo predictionInfo,[Function responseFactory = null]);

}


class PredictionServiceProxyImpl extends bindings.Proxy {
  PredictionServiceProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  PredictionServiceProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  PredictionServiceProxyImpl.unbound() : super.unbound();

  static PredictionServiceProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new PredictionServiceProxyImpl.fromEndpoint(endpoint);

  String get name => PredictionServiceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case kPredictionService_getPredictionList_name:
        var r = PredictionServiceGetPredictionListResponseParams.deserialize(
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
    return "PredictionServiceProxyImpl($superString)";
  }
}


class _PredictionServiceProxyCalls implements PredictionService {
  PredictionServiceProxyImpl _proxyImpl;

  _PredictionServiceProxyCalls(this._proxyImpl);
    void setSettings(Settings settings) {
      assert(_proxyImpl.isBound);
      var params = new PredictionServiceSetSettingsParams();
      params.settings = settings;
      _proxyImpl.sendMessage(params, kPredictionService_setSettings_name);
    }
  
    Future<PredictionServiceGetPredictionListResponseParams> getPredictionList(PredictionInfo predictionInfo,[Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new PredictionServiceGetPredictionListParams();
      params.predictionInfo = predictionInfo;
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kPredictionService_getPredictionList_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
}


class PredictionServiceProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  PredictionService ptr;
  final String name = PredictionServiceName;

  PredictionServiceProxy(PredictionServiceProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _PredictionServiceProxyCalls(proxyImpl);

  PredictionServiceProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new PredictionServiceProxyImpl.fromEndpoint(endpoint) {
    ptr = new _PredictionServiceProxyCalls(impl);
  }

  PredictionServiceProxy.fromHandle(core.MojoHandle handle) :
      impl = new PredictionServiceProxyImpl.fromHandle(handle) {
    ptr = new _PredictionServiceProxyCalls(impl);
  }

  PredictionServiceProxy.unbound() :
      impl = new PredictionServiceProxyImpl.unbound() {
    ptr = new _PredictionServiceProxyCalls(impl);
  }

  static PredictionServiceProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new PredictionServiceProxy.fromEndpoint(endpoint);

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "PredictionServiceProxy($impl)";
  }
}


class PredictionServiceStub extends bindings.Stub {
  PredictionService _impl = null;

  PredictionServiceStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  PredictionServiceStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  PredictionServiceStub.unbound() : super.unbound();

  static PredictionServiceStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new PredictionServiceStub.fromEndpoint(endpoint);

  static const String name = PredictionServiceName;


  PredictionServiceGetPredictionListResponseParams _PredictionServiceGetPredictionListResponseParamsFactory(List<String> predictionList) {
    var result = new PredictionServiceGetPredictionListResponseParams();
    result.predictionList = predictionList;
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
      case kPredictionService_setSettings_name:
        var params = PredictionServiceSetSettingsParams.deserialize(
            message.payload);
        _impl.setSettings(params.settings);
        break;
      case kPredictionService_getPredictionList_name:
        var params = PredictionServiceGetPredictionListParams.deserialize(
            message.payload);
        return _impl.getPredictionList(params.predictionInfo,_PredictionServiceGetPredictionListResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kPredictionService_getPredictionList_name,
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

  PredictionService get impl => _impl;
  set impl(PredictionService d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "PredictionServiceStub($superString)";
  }

  int get version => 0;
}


