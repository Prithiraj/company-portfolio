import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/boxWidget.dart';
import 'widgets/textWidgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'as i intend',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final bodyCol = Color(0xFFBEBEBF);
  final navCol = Color(0xFF060606);
  final contCol = Color(0xFFF3F4F6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyCol.withOpacity(0.5),
      body: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            child: Row(
              children: [getName(), getNav(context, navCol)],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 5.14,
            left: 50,
            child: Material(
              elevation: 5,
              child: Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height / 1.3,
                width: MediaQuery.of(context).size.width / 1.4,
                child: Column(
                  children: [
                    getHeader('1.  Introduction.'),
                    getDesc(context,
                        'Hey, iam Sachin! I create digital experiences based on human interactions and behaviour.'),
                    getHeader('2.  Works.'),
                    Expanded(
                        child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        getBox(context),
                        getBox(context),
                        getBox(context),
                        getBox(context)
                      ],
                    ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
