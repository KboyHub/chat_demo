import 'package:flutter/material.dart';

class TouchCallBack extends StatefulWidget {
  final Widget child;//子组件
  final VoidCallback onPressed;//回调函数
  final bool isFeed;
  final Color background;

  //传入参数列表
  TouchCallBack({Key key,
    @required this.child,
    @required this.onPressed,
    this.isFeed:true,
    this.background:const Color(0xFFD8D8D8),
  }):super(key:key);

  @override
  TouchCallBackState createState() => TouchCallBackState();
}

class TouchCallBackState extends State<TouchCallBack> {

  Color color = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: widget.child,
        color: color,
      ),
      onTap: widget.onPressed,
      onPanDown: (d){
        if(widget.isFeed == false) return;
        setState(() {
          color = widget.background;
        });
      },
      onPanCancel: (){
        setState(() {
          color = Colors.transparent;
        });
      },
    );
  }
}

