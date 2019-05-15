import 'package:flutter/material.dart';


class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  @override
  @override
  void initState() {
    super.initState();

    //在加载页面停留3秒
    new Future.delayed(Duration(seconds: 3),(){
      print('Flutter即时通讯app界面即将展示...');
      Navigator.of(context).pushReplacementNamed('app');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Image.asset('images/loading.jpeg',fit: BoxFit.cover,),
        ],
      ),
    );
  }
}
