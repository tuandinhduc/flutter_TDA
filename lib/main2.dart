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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        body: ListView(
      children: [
        Center(
            child: Text(
          'color palette\n',
          style: TextStyle(fontSize: 30, color: Colors.grey),
        )),
        Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              mamau(Color(0xffACA9BE)),
              mamau(Color(0xffE1D1DE)),
              mamau(Color(0xffEEE3EB)),
              mamau(Color(0xffF6F0F4)),
            ],
          ),
          Text('\n'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              mamau(Color(0xff354035)),
              mamau(Color(0xff3C483A)),
              mamau(Color(0xffA9AAC0)),
              mamau(Color(0xffBAB2C7)),
            ],
          )
        ]),
        Text('\n'),
        Image.asset(
          'assets/images/image2.png',
          fit: BoxFit.fill,
        ),
      ],
      physics: AlwaysScrollableScrollPhysics(),
    ));
    return scaffold;
  }
}

Widget mamau(Color x) {
  return Container(
    height: 73,
    width: 73,
    decoration: BoxDecoration(color: x, shape: BoxShape.circle),
  );
}
