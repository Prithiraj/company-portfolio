import 'package:flutter/material.dart';

getBox(BuildContext context) {
  return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 25),
      child: Container(
        width: (MediaQuery.of(context).size.width / 1.4) / 4.4,
        height: 300,
        decoration: BoxDecoration(border: Border.all(width: 2.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.favorite,
                  size: 45,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Diamonds International online showcase',
                style: TextStyle(
                  wordSpacing: 5,
                  letterSpacing: 2,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ));
}
