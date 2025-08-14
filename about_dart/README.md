# about_dart
Dart関係

## 変数
### final
変更不可にする
~~~
final name = "Bob";
~~~

### const
コンパイル定数にする
~~~
var foo = const[];

class Sample{
    static const qux = "qux"; // クラスのフィールドにある場合はstatic const
}
~~~

## Built-in型
### int, double
どちらかが入る場合はnumで宣言できる
~~~
num one = 1;
~~~

### 型変換
~~~
// String -> int
var one = int.parse('1');

// String -> double
var onePointOne = double.parse('1.1');

// int -> String
String oneAsString = 1.toString();

// double -> String
String piAsString = 3.14159.toStringAsFixed(2);
~~~

### Runes
Unicode値の表現
~~~
Runes input = Runes(
    '\u2665 \u{1f605}'
);
print(String.fromCharCodes(input));
~~~

## 関数
### 名前付きパラメータ
引数を{}で囲うと呼び出し側で名前を任意指定することになる

@requiredアノテーションで必須にする
~~~
void enableFlags({@required bool bold, bool hidden}){...}

enableFlags(bold: true);
~~~

### オプショナルパラメータ
引数に[]をつける



