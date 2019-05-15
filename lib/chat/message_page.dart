import 'package:flutter/material.dart';
import 'message_data.dart';
import 'message_item.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //构造消息列表
      body: ListView.builder(
          //数据长度
          itemCount: messageData.length,
          //构造列表项
          itemBuilder: (BuildContext context,int index){
            //传入消息
            return MessageItem(messageData[index]);
          }),
    );
  }
}
