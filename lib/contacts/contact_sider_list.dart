import 'package:chat_demo/contacts/contact_vo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactSiderList extends StatefulWidget {
  //好友列表数据
  final List <ContactVO> items;
  //好友列表头构造器
  final IndexedWidgetBuilder headerBulider;
  //好友列表项构造器
  final IndexedWidgetBuilder itemBulider;
  //字母构造器
  final IndexedWidgetBuilder sectionBulider;

  //构造方法
  ContactSiderList({
    Key key,
    @required this.items,
    this.headerBulider,
    @required this.itemBulider,
    @required this.sectionBulider,
}):super(key:key);

  @override
  ContactSiderListState createState() => ContactSiderListState();
}

class ContactSiderListState extends State<ContactSiderList> {

  //列表滚动控制器
  final ScrollController _scrollController = new ScrollController();

  bool _onNotification(ScrollNotification notification){
    return true;
  }

  //判断并显示头部视图或空容器
  _isShowHeaderView(index){
    if(index == 0 && widget.headerBulider != null){
      return Offstage(
        offstage: false,
        child: widget.headerBulider(context,index),
      );
    }
    return Container();
  }

  //根据定位判断是否显示好友列表
  bool _shouldShowHeader(int position){
    if(position <= 0){
      return false;
    }
    if(position != 0 && widget.items[position].sectionKey != widget.items[position-1].sectionKey){
      return false;
    }
    return true;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          NotificationListener(
            onNotification: _onNotification,
            child: ListView.builder(
              controller: _scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: widget.items.length,
              itemBuilder: (BuildContext context,int index){
                return Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: <Widget>[
                      _isShowHeaderView(index),
                      Offstage(
                        offstage: _shouldShowHeader(index),
                        child: widget.sectionBulider(context,index),
                      ),
                      Column(
                        children: <Widget>[
                          widget.itemBulider(context,index),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
