import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'contact_vo.dart';

class ContactItem extends StatelessWidget {
  //好友数据
  final ContactVO item;
  //标题
  final String titleName;
  //图片路径
  final String imageName;
  //构建方法
  ContactItem({this.item,this.titleName,this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 0.5,color: Color(0xFF9D9D9D))),
      ),
      height: 52.0,
      child: FlatButton(
        onPressed: (){
          
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //展示头像或图片
            imageName == null ? Image.network(item.avatorUrl != '' ? item.avatorUrl : 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1368543271,1007762748&fm=26&gp=0.jpg',width: 36.0,height: 36.0,scale: 0.9,) : Image.asset(imageName,width: 36.0,height: 36.0,),
            //展示名称标题
            Container(
              margin: const EdgeInsets.only(left: 12.0),
              child: Text(
                titleName == null ? item.name ?? '暂时' : titleName,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xFF353535),
                ),
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}