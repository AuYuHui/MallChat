import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:mallchat/env.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

/**
 * WS 工具服务
 */
class Socket {
  static Socket? _instance;
  WebSocketChannel? _channel;
  final int _heartTimes = 9900; // 心跳间隔(毫秒)
  final int _rcMaxCount = 100; // 重连次数，默认60次
  int _reconnectCount = 0;
  final int _reconnectInterval = 2000; // 重连连接间隔(毫秒)
  Timer? _reconnectTimer; // 重新连接计时器

  factory Socket() {
    _instance ??= Socket._internal();
    return _instance!;
  }

  Socket._internal();

  // 创建一个WebSocketChannel，并连接到WebSocket服务器
  void initSocket() async {
    if (_channel == null) {
      _channel = IOWebSocketChannel.connect(Env.wsUrl,
          pingInterval: Duration(milliseconds: _heartTimes));
      // 监听socket服务器的状态，并对 成功、异常、断开 进行处理
      _channel?.stream.listen(onData, onError: onError, onDone: onDone);
    }
  }

  WebSocketChannel? instance() {
    return _channel;
  }

  void sendMessage(Map<String, dynamic> value) {
    if (_channel == null) initSocket();

    _channel?.sink.add(json.encode(value));
  }

  // socket 链接断开以后重新初始化 socket
  void onDone() async {
    print('Socket is closed');
    _reconnect();
  }

  // socket err 情况的处理
  void onError(err) {
    debugPrint(err.runtimeType.toString());
    WebSocketChannelException ex = err;
    debugPrint(ex.message);
    _reconnect();
  }

  // 收到服务端推送的消息event
  void onData(event) {
    print('收到消息 ${event}');
  }

  // 关闭WebSocket连接
  void dispose() {
    _reconnectTimer?.cancel();
    _channel?.sink.close();
    _channel = null; // 设置为null以允许重新初始化
  }

  void _reconnect() {
    if (_reconnectCount < _rcMaxCount) {
      _reconnectCount++;
      _channel?.sink.close();
      _reconnectTimer = Timer(Duration(milliseconds: _reconnectInterval), () {
        initSocket(); // Reconnect
      });
    } else {
      dispose(); // Close the socket
    }
  }
}
