class ChatModel {
  String? message;
  String? image;
  String? video;
  String? messageType;
  String time;
  bool isSender;
  bool isBlurImage;
  bool isBlurVideo;
  bool? isasset;
  ChatModel({
    this.message,
    this.image,
    this.video,
    required this.time,
    this.isSender = false,
    this.isBlurImage = true,
    this.isBlurVideo = true,
    this.messageType,
    this.isasset,
  });
}

List<ChatModel> chatList = [
  ChatModel(
    message: 'Hey there! It is jaydon korsgaard. What’s up with you today?',
    time: '11:15',
    messageType: 'text',
  ),
  ChatModel(
    time: '11:17',
    isSender: true,
    message: 'Not much, just enjoying a quiet day at home. How about you?',
    messageType: 'text',
  ),
  ChatModel(
      time: '11:18',
      image: 'assets/images/swipe.png',
      messageType: 'image',
      isasset: true),
  ChatModel(
    time: '11:20',
    message: 'Not really, just the usual work stuff.',
    isSender: true,
    messageType: 'text',
  ),
  ChatModel(
    time: '11:22',
    video: 'assets/videos/sample-5s.mp4',
    messageType: 'video',
  ),
];
