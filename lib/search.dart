import 'package:flutter/material.dart';
import 'common/touch_callback.dart';

class Search extends StatefulWidget {
  @override
  SearchState createState() => SearchState();
}

class SearchState extends State<Search> {
  //定义焦点节点
  FocusNode focusNode = FocusNode();

  //请求获取焦点
  _requestFocus() {
    FocusScope.of(context).requestFocus(focusNode);
    return focusNode;
  }

  _getText(String text){
    return TouchCallBack(
      isFeed: false,
      onPressed: (){
        print(text);
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 14.0,color: Color(0xFF1AAD19)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top:35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //1.搜索工具栏
            Stack(
              children: <Widget>[
                //使用触摸回调组件
                TouchCallBack(
                  isFeed: false,
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 45.0,
                    margin: const EdgeInsets.only(left: 12.0,right: 10.0),
                    //天剑返回按钮
                    child: Icon(Icons.arrow_back_ios,color: Colors.black,),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 45.0,
                  margin: const EdgeInsets.only(left: 50.0,right: 20.0),
                  //搜索栏底部边框
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.0,color: Colors.green),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          focusNode: _requestFocus(),
                          style: TextStyle(color: Colors.black,fontSize: 16.0),
                          onChanged: (String text){},
                          decoration: InputDecoration(
                            hintText: '搜索',border: InputBorder.none
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10.0),
                        child: Icon(Icons.mic,color: Color(0xFFAAAAAA),),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: Text('常用搜索',style: TextStyle(
                fontSize: 16.0,color: Color(0xFFB5B5B5),
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _getText('朋友'),
                  _getText('聊天'),
                  _getText('群组'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0,right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _getText('Flutter'),
                  _getText('Dart'),
                  _getText('C++'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
