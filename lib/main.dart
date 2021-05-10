import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Image.asset(
          'assets/images/image1.png',
          height: 535,
          width: 428,
          fit: BoxFit.fill,
        ),
        Center(
            child: Text(
          '\ncolor palette\n',
          style: TextStyle(fontSize: 40, color: Colors.grey),
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            mamau(Color(0xff313036)),
            mamau(Color(0xff1B304B)),
            mamau(Color(0xff344869)),
            mamau(Color(0xffB1B8C0)),
            mamau(Color(0xffD5D5D5)),
            mamau(Color(0xffDDDDDD)),
          ],
        ),
        Container(
          height: 30,
          width: double.infinity,
        )
      ],
      physics: AlwaysScrollableScrollPhysics(),
    ));
  }
}

Widget mamau(Color x) {
  return Container(
    height: 183,
    width: 51,
    color: x,
  );
}
