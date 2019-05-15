// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'message_data.dart';
import 'package:chat_demo/common/touch_callback.dart';
import 'package:date_format/date_format.dart';

class MessageItem extends StatelessWidget {
  final MessageData message;
  MessageItem(this.message);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xFFD9D9D9),width: 0.5)),
      ),
      height: 64.0,
      child: TouchCallBack(
        onPressed: (){},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //头像
            Container(
              margin: const EdgeInsets.only(left: 13.0,right: 13.0),
              child: Image.network(message.avator,width: 48.0,height: 48.0,),
            ),
            //昵称、消息
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    message.title,
                    style: TextStyle(fontSize: 16.0,color: Color(0xFF353535)),
                    maxLines: 1,
                  ),
                  Padding(padding: const EdgeInsets.only(top: 8),),
                  Text(
                    message.suTitle,
                    style: TextStyle(fontSize: 14.0,color: Color(0xFFA9A9A9)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            //时间
            Container(
              alignment: AlignmentDirectional.topStart,
              margin: const EdgeInsets.only(right: 12.0,top: 12.0),
              child: Text(
                formatDate(message.time, [HH,':',nn,':',ss]).toString(),
                style: TextStyle(fontSize: 14.0,color: Color(0xFFA9A9A9)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
