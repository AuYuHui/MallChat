class Api {
  // 获取用户信息
  static const String userDetail = '/capi/user/userInfo';
  // 批量获取用户信息
  static const String userInfoBatch =
      '/capi/user/public/summary/userInfo/batch';

  // 会话列表
  static const String sessionList = '/capi/chat/public/contact/page';
  // 会话信息
  static const String chatMessage = '/capi/chat/public/msg/page';
  // 发送信息
  static const String chatSendMessage = '/capi/chat/msg';
}
