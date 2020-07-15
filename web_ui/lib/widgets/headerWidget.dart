import 'package:flutter/material.dart';

getRow(BuildContext context) {
  return Row(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 48),
        child: Icon(
          Icons.blur_circular,
          size: MediaQuery.of(context).size.width / 54.8,
        ),
      ),
      SizedBox(width: MediaQuery.of(context).size.width / 4.5),
      Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 54.8),
        child: Text(
          'Teacher',
          style:
              TextStyle(fontSize: MediaQuery.of(context).size.width / 91.3333),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 54.8),
        child: Text(
          'Student',
          style:
              TextStyle(fontSize: MediaQuery.of(context).size.width / 91.3333),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 54.8),
        child: Text(
          'Contact Us',
          style:
              TextStyle(fontSize: MediaQuery.of(context).size.width / 91.3333),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 54.8),
        child: Text(
          'Careers',
          style:
              TextStyle(fontSize: MediaQuery.of(context).size.width / 91.3333),
        ),
      ),
    ],
  );
}
