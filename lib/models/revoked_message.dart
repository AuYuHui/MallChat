class RevokedMessage {
  final int msgId;
  final int roomId;
  final int recallUid;

  RevokedMessage(
      {required this.msgId, required this.roomId, required this.recallUid});
}
