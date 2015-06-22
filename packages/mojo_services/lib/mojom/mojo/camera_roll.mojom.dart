// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library camera_roll_mojom;

import 'dart:async';

import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;


class Photo extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  String uniqueId = null;
  core.MojoDataPipeConsumer content = null;

  Photo() : super(kVersions.last.size);

  static Photo deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static Photo decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    Photo result = new Photo();

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
      
      result.uniqueId = decoder0.decodeString(8, false);
    }
    if (mainDataHeader.version >= 0) {
      
      result.content = decoder0.decodeConsumerHandle(16, false);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeString(uniqueId, 8, false);
    
    encoder0.encodeConsumerHandle(content, 16, false);
  }

  String toString() {
    return "Photo("
           "uniqueId: $uniqueId" ", "
           "content: $content" ")";
  }
}

class CameraRollServiceUpdateParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  CameraRollServiceUpdateParams() : super(kVersions.last.size);

  static CameraRollServiceUpdateParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static CameraRollServiceUpdateParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    CameraRollServiceUpdateParams result = new CameraRollServiceUpdateParams();

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
    return "CameraRollServiceUpdateParams("")";
  }
}

class CameraRollServiceGetCountParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  CameraRollServiceGetCountParams() : super(kVersions.last.size);

  static CameraRollServiceGetCountParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static CameraRollServiceGetCountParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    CameraRollServiceGetCountParams result = new CameraRollServiceGetCountParams();

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
    return "CameraRollServiceGetCountParams("")";
  }
}

class CameraRollServiceGetCountResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  int numPhotos = 0;

  CameraRollServiceGetCountResponseParams() : super(kVersions.last.size);

  static CameraRollServiceGetCountResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static CameraRollServiceGetCountResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    CameraRollServiceGetCountResponseParams result = new CameraRollServiceGetCountResponseParams();

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
      
      result.numPhotos = decoder0.decodeUint32(8);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeUint32(numPhotos, 8);
  }

  String toString() {
    return "CameraRollServiceGetCountResponseParams("
           "numPhotos: $numPhotos" ")";
  }
}

class CameraRollServiceGetPhotoParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  int index = 0;

  CameraRollServiceGetPhotoParams() : super(kVersions.last.size);

  static CameraRollServiceGetPhotoParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static CameraRollServiceGetPhotoParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    CameraRollServiceGetPhotoParams result = new CameraRollServiceGetPhotoParams();

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
      
      result.index = decoder0.decodeUint32(8);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeUint32(index, 8);
  }

  String toString() {
    return "CameraRollServiceGetPhotoParams("
           "index: $index" ")";
  }
}

class CameraRollServiceGetPhotoResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  Photo photo = null;

  CameraRollServiceGetPhotoResponseParams() : super(kVersions.last.size);

  static CameraRollServiceGetPhotoResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static CameraRollServiceGetPhotoResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    CameraRollServiceGetPhotoResponseParams result = new CameraRollServiceGetPhotoResponseParams();

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
      result.photo = Photo.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(photo, 8, true);
  }

  String toString() {
    return "CameraRollServiceGetPhotoResponseParams("
           "photo: $photo" ")";
  }
}

const int kCameraRollService_update_name = 0;
const int kCameraRollService_getCount_name = 1;
const int kCameraRollService_getPhoto_name = 2;

const String CameraRollServiceName =
      'mojo::CameraRollService';

abstract class CameraRollService {
  void update();
  Future<CameraRollServiceGetCountResponseParams> getCount([Function responseFactory = null]);
  Future<CameraRollServiceGetPhotoResponseParams> getPhoto(int index,[Function responseFactory = null]);

}


class CameraRollServiceProxyImpl extends bindings.Proxy {
  CameraRollServiceProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  CameraRollServiceProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  CameraRollServiceProxyImpl.unbound() : super.unbound();

  static CameraRollServiceProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For CameraRollServiceProxyImpl"));
    return new CameraRollServiceProxyImpl.fromEndpoint(endpoint);
  }

  String get name => CameraRollServiceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case kCameraRollService_getCount_name:
        var r = CameraRollServiceGetCountResponseParams.deserialize(
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
      case kCameraRollService_getPhoto_name:
        var r = CameraRollServiceGetPhotoResponseParams.deserialize(
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
    return "CameraRollServiceProxyImpl($superString)";
  }
}


class _CameraRollServiceProxyCalls implements CameraRollService {
  CameraRollServiceProxyImpl _proxyImpl;

  _CameraRollServiceProxyCalls(this._proxyImpl);
    void update() {
      assert(_proxyImpl.isBound);
      var params = new CameraRollServiceUpdateParams();
      _proxyImpl.sendMessage(params, kCameraRollService_update_name);
    }
  
    Future<CameraRollServiceGetCountResponseParams> getCount([Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new CameraRollServiceGetCountParams();
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kCameraRollService_getCount_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
    Future<CameraRollServiceGetPhotoResponseParams> getPhoto(int index,[Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new CameraRollServiceGetPhotoParams();
      params.index = index;
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kCameraRollService_getPhoto_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
}


class CameraRollServiceProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  CameraRollService ptr;
  final String name = CameraRollServiceName;

  CameraRollServiceProxy(CameraRollServiceProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _CameraRollServiceProxyCalls(proxyImpl);

  CameraRollServiceProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new CameraRollServiceProxyImpl.fromEndpoint(endpoint) {
    ptr = new _CameraRollServiceProxyCalls(impl);
  }

  CameraRollServiceProxy.fromHandle(core.MojoHandle handle) :
      impl = new CameraRollServiceProxyImpl.fromHandle(handle) {
    ptr = new _CameraRollServiceProxyCalls(impl);
  }

  CameraRollServiceProxy.unbound() :
      impl = new CameraRollServiceProxyImpl.unbound() {
    ptr = new _CameraRollServiceProxyCalls(impl);
  }

  static CameraRollServiceProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For CameraRollServiceProxy"));
    return new CameraRollServiceProxy.fromEndpoint(endpoint);
  }

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "CameraRollServiceProxy($impl)";
  }
}


class CameraRollServiceStub extends bindings.Stub {
  CameraRollService _impl = null;

  CameraRollServiceStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  CameraRollServiceStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  CameraRollServiceStub.unbound() : super.unbound();

  static CameraRollServiceStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For CameraRollServiceStub"));
    return new CameraRollServiceStub.fromEndpoint(endpoint);
  }

  static const String name = CameraRollServiceName;


  CameraRollServiceGetCountResponseParams _CameraRollServiceGetCountResponseParamsFactory(int numPhotos) {
    var result = new CameraRollServiceGetCountResponseParams();
    result.numPhotos = numPhotos;
    return result;
  }
  CameraRollServiceGetPhotoResponseParams _CameraRollServiceGetPhotoResponseParamsFactory(Photo photo) {
    var result = new CameraRollServiceGetPhotoResponseParams();
    result.photo = photo;
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
      case kCameraRollService_update_name:
        var params = CameraRollServiceUpdateParams.deserialize(
            message.payload);
        _impl.update();
        break;
      case kCameraRollService_getCount_name:
        var params = CameraRollServiceGetCountParams.deserialize(
            message.payload);
        return _impl.getCount(_CameraRollServiceGetCountResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kCameraRollService_getCount_name,
                message.header.requestId,
                bindings.MessageHeader.kMessageIsResponse);
          }
        });
        break;
      case kCameraRollService_getPhoto_name:
        var params = CameraRollServiceGetPhotoParams.deserialize(
            message.payload);
        return _impl.getPhoto(params.index,_CameraRollServiceGetPhotoResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kCameraRollService_getPhoto_name,
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

  CameraRollService get impl => _impl;
  set impl(CameraRollService d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "CameraRollServiceStub($superString)";
  }

  int get version => 0;
}


