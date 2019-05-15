enum MessageType{SYSTEM,PUBLIC,CHAT,GROUP}
//消息体
class MessageData{
  //头像
  String avator;
  //主标题 昵称
  String title;
  //子标题 消息内容
  String suTitle;
  //消息时间
  DateTime time;
  //消息类型
  MessageType type;

  MessageData(this.avator,this.title,this.suTitle,this.time,this.type);

}


List<MessageData> messageData = [
  new MessageData(
      'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=254441654,1230437989&fm=26&gp=0.jpg',
      '一休哥',
      '你今天在干嘛',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2585277119,3646149544&fm=26&gp=0.jpg',
      '北漂一族',
      '五一大家干啥去啊',
      new DateTime.now(),
      MessageType.GROUP
  ),
  new MessageData(
      'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=28081024,3196168551&fm=26&gp=0.jpg',
      '号外',
      '今天下午3点放假',
      new DateTime.now(),
      MessageType.PUBLIC
  ),
  new MessageData(
      'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=240605920,3457782510&fm=26&gp=0.jpg',
      '系统消息',
      '微信今天开始放假',
      new DateTime.now(),
      MessageType.SYSTEM
  ),
  new MessageData(
      'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1792894298,856132472&fm=26&gp=0.jpg',
      '小龙',
      '回家有门吗问哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2184489151,1608891237&fm=26&gp=0.jpg',
      'q趣小刚跑',
      '你今天在干嘛',
      new DateTime.now(),
      MessageType.CHAT
  ),

];


