class Message {
  final bool isMe;
  final String text;

  Message({required this.isMe, required this.text});

  factory Message.formMap(dynamic map) {
    return Message(isMe: map['isMe'] ?? false, text: map['text'] ?? '');
  }
}
