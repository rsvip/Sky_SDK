// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library notifications_mojom;

import 'dart:async';

import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;


class NotificationData extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  String title = null;
  String text = null;

  NotificationData() : super(kVersions.last.size);

  static NotificationData deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static NotificationData decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NotificationData result = new NotificationData();

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
      
      result.title = decoder0.decodeString(8, true);
    }
    if (mainDataHeader.version >= 0) {
      
      result.text = decoder0.decodeString(16, true);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeString(title, 8, true);
    
    encoder0.encodeString(text, 16, true);
  }

  String toString() {
    return "NotificationData("
           "title: $title" ", "
           "text: $text" ")";
  }
}

class NotificationClientOnSelectedParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  NotificationClientOnSelectedParams() : super(kVersions.last.size);

  static NotificationClientOnSelectedParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static NotificationClientOnSelectedParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NotificationClientOnSelectedParams result = new NotificationClientOnSelectedParams();

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
    return "NotificationClientOnSelectedParams("")";
  }
}

class NotificationClientOnDismissedParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  NotificationClientOnDismissedParams() : super(kVersions.last.size);

  static NotificationClientOnDismissedParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static NotificationClientOnDismissedParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NotificationClientOnDismissedParams result = new NotificationClientOnDismissedParams();

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
    return "NotificationClientOnDismissedParams("")";
  }
}

class NotificationUpdateParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  NotificationData notificationData = null;

  NotificationUpdateParams() : super(kVersions.last.size);

  static NotificationUpdateParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static NotificationUpdateParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NotificationUpdateParams result = new NotificationUpdateParams();

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
      result.notificationData = NotificationData.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(notificationData, 8, false);
  }

  String toString() {
    return "NotificationUpdateParams("
           "notificationData: $notificationData" ")";
  }
}

class NotificationCancelParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  NotificationCancelParams() : super(kVersions.last.size);

  static NotificationCancelParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static NotificationCancelParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NotificationCancelParams result = new NotificationCancelParams();

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
    return "NotificationCancelParams("")";
  }
}

class NotificationServicePostParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(32, 0)
  ];
  NotificationData notificationData = null;
  Object client = null;
  Object notification = null;

  NotificationServicePostParams() : super(kVersions.last.size);

  static NotificationServicePostParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static NotificationServicePostParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NotificationServicePostParams result = new NotificationServicePostParams();

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
      result.notificationData = NotificationData.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      result.client = decoder0.decodeServiceInterface(16, true, NotificationClientProxy.newFromEndpoint);
    }
    if (mainDataHeader.version >= 0) {
      
      result.notification = decoder0.decodeInterfaceRequest(24, true, NotificationStub.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(notificationData, 8, false);
    
    encoder0.encodeInterface(client, 16, true);
    
    encoder0.encodeInterfaceRequest(notification, 24, true);
  }

  String toString() {
    return "NotificationServicePostParams("
           "notificationData: $notificationData" ", "
           "client: $client" ", "
           "notification: $notification" ")";
  }
}

const int kNotificationClient_onSelected_name = 0;
const int kNotificationClient_onDismissed_name = 1;

const String NotificationClientName =
      'notifications::NotificationClient';

abstract class NotificationClient {
  void onSelected();
  void onDismissed();

}


class NotificationClientProxyImpl extends bindings.Proxy {
  NotificationClientProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  NotificationClientProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  NotificationClientProxyImpl.unbound() : super.unbound();

  static NotificationClientProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For NotificationClientProxyImpl"));
    return new NotificationClientProxyImpl.fromEndpoint(endpoint);
  }

  String get name => NotificationClientName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  String toString() {
    var superString = super.toString();
    return "NotificationClientProxyImpl($superString)";
  }
}


class _NotificationClientProxyCalls implements NotificationClient {
  NotificationClientProxyImpl _proxyImpl;

  _NotificationClientProxyCalls(this._proxyImpl);
    void onSelected() {
      assert(_proxyImpl.isBound);
      var params = new NotificationClientOnSelectedParams();
      _proxyImpl.sendMessage(params, kNotificationClient_onSelected_name);
    }
  
    void onDismissed() {
      assert(_proxyImpl.isBound);
      var params = new NotificationClientOnDismissedParams();
      _proxyImpl.sendMessage(params, kNotificationClient_onDismissed_name);
    }
  
}


class NotificationClientProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  NotificationClient ptr;
  final String name = NotificationClientName;

  NotificationClientProxy(NotificationClientProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _NotificationClientProxyCalls(proxyImpl);

  NotificationClientProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new NotificationClientProxyImpl.fromEndpoint(endpoint) {
    ptr = new _NotificationClientProxyCalls(impl);
  }

  NotificationClientProxy.fromHandle(core.MojoHandle handle) :
      impl = new NotificationClientProxyImpl.fromHandle(handle) {
    ptr = new _NotificationClientProxyCalls(impl);
  }

  NotificationClientProxy.unbound() :
      impl = new NotificationClientProxyImpl.unbound() {
    ptr = new _NotificationClientProxyCalls(impl);
  }

  static NotificationClientProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For NotificationClientProxy"));
    return new NotificationClientProxy.fromEndpoint(endpoint);
  }

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "NotificationClientProxy($impl)";
  }
}


class NotificationClientStub extends bindings.Stub {
  NotificationClient _impl = null;

  NotificationClientStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  NotificationClientStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  NotificationClientStub.unbound() : super.unbound();

  static NotificationClientStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For NotificationClientStub"));
    return new NotificationClientStub.fromEndpoint(endpoint);
  }

  static const String name = NotificationClientName;



  Future<bindings.Message> handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    assert(_impl != null);
    switch (message.header.type) {
      case kNotificationClient_onSelected_name:
        var params = NotificationClientOnSelectedParams.deserialize(
            message.payload);
        _impl.onSelected();
        break;
      case kNotificationClient_onDismissed_name:
        var params = NotificationClientOnDismissedParams.deserialize(
            message.payload);
        _impl.onDismissed();
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  NotificationClient get impl => _impl;
  set impl(NotificationClient d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "NotificationClientStub($superString)";
  }

  int get version => 0;
}

const int kNotification_update_name = 0;
const int kNotification_cancel_name = 1;

const String NotificationName =
      'notifications::Notification';

abstract class Notification {
  void update(NotificationData notificationData);
  void cancel();

}


class NotificationProxyImpl extends bindings.Proxy {
  NotificationProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  NotificationProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  NotificationProxyImpl.unbound() : super.unbound();

  static NotificationProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For NotificationProxyImpl"));
    return new NotificationProxyImpl.fromEndpoint(endpoint);
  }

  String get name => NotificationName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  String toString() {
    var superString = super.toString();
    return "NotificationProxyImpl($superString)";
  }
}


class _NotificationProxyCalls implements Notification {
  NotificationProxyImpl _proxyImpl;

  _NotificationProxyCalls(this._proxyImpl);
    void update(NotificationData notificationData) {
      assert(_proxyImpl.isBound);
      var params = new NotificationUpdateParams();
      params.notificationData = notificationData;
      _proxyImpl.sendMessage(params, kNotification_update_name);
    }
  
    void cancel() {
      assert(_proxyImpl.isBound);
      var params = new NotificationCancelParams();
      _proxyImpl.sendMessage(params, kNotification_cancel_name);
    }
  
}


class NotificationProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  Notification ptr;
  final String name = NotificationName;

  NotificationProxy(NotificationProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _NotificationProxyCalls(proxyImpl);

  NotificationProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new NotificationProxyImpl.fromEndpoint(endpoint) {
    ptr = new _NotificationProxyCalls(impl);
  }

  NotificationProxy.fromHandle(core.MojoHandle handle) :
      impl = new NotificationProxyImpl.fromHandle(handle) {
    ptr = new _NotificationProxyCalls(impl);
  }

  NotificationProxy.unbound() :
      impl = new NotificationProxyImpl.unbound() {
    ptr = new _NotificationProxyCalls(impl);
  }

  static NotificationProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For NotificationProxy"));
    return new NotificationProxy.fromEndpoint(endpoint);
  }

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "NotificationProxy($impl)";
  }
}


class NotificationStub extends bindings.Stub {
  Notification _impl = null;

  NotificationStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  NotificationStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  NotificationStub.unbound() : super.unbound();

  static NotificationStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For NotificationStub"));
    return new NotificationStub.fromEndpoint(endpoint);
  }

  static const String name = NotificationName;



  Future<bindings.Message> handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    assert(_impl != null);
    switch (message.header.type) {
      case kNotification_update_name:
        var params = NotificationUpdateParams.deserialize(
            message.payload);
        _impl.update(params.notificationData);
        break;
      case kNotification_cancel_name:
        var params = NotificationCancelParams.deserialize(
            message.payload);
        _impl.cancel();
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  Notification get impl => _impl;
  set impl(Notification d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "NotificationStub($superString)";
  }

  int get version => 0;
}

const int kNotificationService_post_name = 0;

const String NotificationServiceName =
      'notifications::NotificationService';

abstract class NotificationService {
  void post(NotificationData notificationData, Object client, Object notification);

}


class NotificationServiceProxyImpl extends bindings.Proxy {
  NotificationServiceProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  NotificationServiceProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  NotificationServiceProxyImpl.unbound() : super.unbound();

  static NotificationServiceProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For NotificationServiceProxyImpl"));
    return new NotificationServiceProxyImpl.fromEndpoint(endpoint);
  }

  String get name => NotificationServiceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  String toString() {
    var superString = super.toString();
    return "NotificationServiceProxyImpl($superString)";
  }
}


class _NotificationServiceProxyCalls implements NotificationService {
  NotificationServiceProxyImpl _proxyImpl;

  _NotificationServiceProxyCalls(this._proxyImpl);
    void post(NotificationData notificationData, Object client, Object notification) {
      assert(_proxyImpl.isBound);
      var params = new NotificationServicePostParams();
      params.notificationData = notificationData;
      params.client = client;
      params.notification = notification;
      _proxyImpl.sendMessage(params, kNotificationService_post_name);
    }
  
}


class NotificationServiceProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  NotificationService ptr;
  final String name = NotificationServiceName;

  NotificationServiceProxy(NotificationServiceProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _NotificationServiceProxyCalls(proxyImpl);

  NotificationServiceProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new NotificationServiceProxyImpl.fromEndpoint(endpoint) {
    ptr = new _NotificationServiceProxyCalls(impl);
  }

  NotificationServiceProxy.fromHandle(core.MojoHandle handle) :
      impl = new NotificationServiceProxyImpl.fromHandle(handle) {
    ptr = new _NotificationServiceProxyCalls(impl);
  }

  NotificationServiceProxy.unbound() :
      impl = new NotificationServiceProxyImpl.unbound() {
    ptr = new _NotificationServiceProxyCalls(impl);
  }

  static NotificationServiceProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For NotificationServiceProxy"));
    return new NotificationServiceProxy.fromEndpoint(endpoint);
  }

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "NotificationServiceProxy($impl)";
  }
}


class NotificationServiceStub extends bindings.Stub {
  NotificationService _impl = null;

  NotificationServiceStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  NotificationServiceStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  NotificationServiceStub.unbound() : super.unbound();

  static NotificationServiceStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For NotificationServiceStub"));
    return new NotificationServiceStub.fromEndpoint(endpoint);
  }

  static const String name = NotificationServiceName;



  Future<bindings.Message> handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    assert(_impl != null);
    switch (message.header.type) {
      case kNotificationService_post_name:
        var params = NotificationServicePostParams.deserialize(
            message.payload);
        _impl.post(params.notificationData, params.client, params.notification);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  NotificationService get impl => _impl;
  set impl(NotificationService d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "NotificationServiceStub($superString)";
  }

  int get version => 0;
}


