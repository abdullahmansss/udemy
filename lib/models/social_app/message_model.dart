class MessageModel {
  String? senderId;
  String? receiverId;
  String? dateTime;
  String? text;

  MessageModel({
    this.senderId,
    this.receiverId,
    this.dateTime,
    this.text,
  });

  MessageModel.fromJson(Map<String, dynamic> json)
  {
    senderId = json['senderId'];
    receiverId = json['receiverId'];
    dateTime = json['dateTime'];
    text = json['text'];
  }

  Map<String, dynamic> toMap()
  {
    return {
      'senderId':senderId,
      'receiverId':receiverId,
      'dateTime':dateTime,
      'text':text,
    };
  }
}