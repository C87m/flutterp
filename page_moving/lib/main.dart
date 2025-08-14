// 画面遷移デモ

import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Named Routes
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => FirstPage(),
      //   '/second': (context) => SecondPage(),
      // },

      // 2. onGenerateRouteプロパティを使用
      // onGenerateRoute: (settings){
      //   if(settings.name == '/second'){
      //     var messageFromFirst = settings.arguments;
      //     return MaterialPageRoute(
      //       builder: (context){
      //         return SecondPage(messageFromFirst);
      //       },
      //     );
      //   }
      //   return null;
      // },
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  // Widgetのコンストラクタにsuper.keyを渡す
  const FirstPage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // 画面をスタック
            var message = await Navigator.push(
              context,
              // MaterialPageRouteのインスタンスを渡し、遷移したいWidgetを指定
              MaterialPageRoute(
                builder: (context) {
                  // コンストラクタででーたの受け渡しが可能
                  return SecondPage('messageFromFirst');
                },
                // モーダル遷移
                // fullscreenDialog: true,
              ),
            );
            print(message);
          },

          // Named Routes
          // onPressed: (){
          //   Naigator.pushNamed(
          //     context,
          //     '/second',
          //     argments: 'messageFromFirsts',
          //   );
          // }
          child: Text('Next Page'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  // 遷移元からデータを受け取る
  final String messageFromFirst;
  SecondPage(this.messageFromFirst);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // AppBarが勝手に戻るボタンを用意してくれるので必ず記述する必要はない
            Navigator.pop(context, "fromSecondPage");
          },
          child: Text('Go back'),
        ),
      ),
    );
  }

  // Named Routes
  // 1. ModalRouteクラスを使用
  // @override
  // Widget build(BuildContext, context){
  //   var messageFromFirst = ModalRoute.of(context).setting.arguments;
  //   print(messageFromFirst);
  // }
}
