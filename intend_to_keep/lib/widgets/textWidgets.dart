import 'package:flutter/material.dart';
import 'package:intend_to_keep/helpers/hover.dart';

List<Widget> iconsList = [
  Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Image.asset(
        'assets/apple.png',
        width: 25,
        height: 25,
      )),
  Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Image.asset(
        'assets/lrlogo.png',
        width: 40,
        height: 40,
      )),
  Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Image.asset(
        'assets/frlogo.png',
        width: 30,
        height: 30,
      )),
  Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Image.asset(
        'assets/hmlogo.jpg',
        width: 60,
        height: 60,
      )),
  Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Image.asset(
        'assets/djlogo.png',
        width: 60,
        height: 60,
      )),
  Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Image.asset(
        'assets/vlogo.png',
        width: 40,
        height: 40,
      )),
];
getName() {
  return Expanded(
      flex: 1,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 80.0),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: 40,
                  height: 40,
                  child: Center(
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  ),
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                ),
              ),
              Text('Sachin.',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            ],
          ),
        ),
      ));
}

getNav(BuildContext context, Color navCol) {
  return Expanded(
    flex: 3,
    child: Container(
      height: MediaQuery.of(context).size.height / 3,
      color: navCol,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Text(
                '5. Skills & knowledge',
                style: TextStyle(
                    color: Colors.white, wordSpacing: 5, letterSpacing: 2),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: iconsList.length,
                itemBuilder: (context, i) {
                  return iconsList[i];
                }),
          ),
          Container(
            padding: EdgeInsets.only(right: 25),
            height: 90,
            child: Align(
              alignment: Alignment.centerRight,
              child: showButtonAsCursor(
                Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'see more info',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                  ),
                  width: 150,
                  height: 50,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

getHeader(String header) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        header,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

getDesc(BuildContext context, String desc) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Container(
      padding: EdgeInsets.only(left: 20),
      width: MediaQuery.of(context).size.width / 2,
      child: Text(
        desc,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            wordSpacing: 5,
            letterSpacing: 2),
      ),
    ),
  );
}
