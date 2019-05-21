import 'dart:io';

import 'package:chat_demo/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'app.dart';
import 'search.dart';
import 'package:flutter/services.dart';

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
    routes: <String, WidgetBuilder>{
      'app': (BuildContext context) => new App(),
      '/friends': (_) => new WebviewScaffold(
            //webview插件
            url: 'https://flutter.dev',
            appBar: AppBar(
              title: Text('Flutter官网'),
            ),
            withZoom: true,
            withLocalStorage: true,
          ),
      'search': (BuildContext context) => new Search(),
    },
    home: Center(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child: new LoadingPage()),
    )),
  ));
  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
    SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }

}
