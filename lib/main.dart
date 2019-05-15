
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'loading.dart';
import 'app.dart';
import 'search.dart';

//自定义主题
final ThemeData mDefaultTheme = ThemeData(
  primaryColor: Color(0xFFEBEBEB),
  scaffoldBackgroundColor: Color(0xFFEBEBEB),
  cardColor: Colors.grey[700],
);

void main() {
  runApp(MaterialApp(
    title: '聊天室',
    theme: mDefaultTheme,
    //添加路由表
    routes: <String,WidgetBuilder>{
      'app': (BuildContext context) =>new App(),
      '/friends': (_) => new WebviewScaffold(
        //webview插件
        url: 'http://www.baidu.com',
        appBar: AppBar(
          title: Text('Flutter官网'),
        ),
        withZoom: true,
        withLocalStorage: true,
      ),
      'search':(BuildContext context) => new Search(),
    },
    home: new LoadingPage(),
  ));
}