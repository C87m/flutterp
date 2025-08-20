import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ), //カラーテーマ

        fontFamily: 'Montserrat', // フォント

        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 16.0),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //textThemeを取得
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar', style: textTheme.headlineLarge),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(children: [Text('Hello!'), TextWidget()]),
    );
  }
}

// Textウィジェット
class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello World!',
      style: TextStyle(
        color: Colors.deepPurple, // テキストの色
        fontSize: 16.0, // サイズ
        fontWeight: FontWeight.bold, // 太さ
        fontStyle: FontStyle.normal, // スタイル
        fontFamily: 'Roboto', // フォントの種類
        letterSpacing: 1.5, // 文字間の間隔
        wordSpacing: 3.0, // 単語間の間隔
        decoration: TextDecoration.underline, // 装飾
        height: 1.5, // 行間
      ),
      strutStyle: StrutStyle(
        leading: 4.0, // 文字の上下部分
        height: 3.3, // ascent+descent(文字の大きさ)
      ),
    );
  }
}
