import 'package:flutter/material.dart';

getBlueBar(BuildContext context) {
  return Positioned(
    left: MediaQuery.of(context).size.width / 1.7,
    child: Container(
      width: MediaQuery.of(context).size.width / 11.913043478,
      height: MediaQuery.of(context).size.width / 6.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft:
                Radius.circular(MediaQuery.of(context).size.width / 68.5),
            bottomRight:
                Radius.circular(MediaQuery.of(context).size.width / 68.5)),
        shape: BoxShape.rectangle,
        color: Colors.blue,
      ),
    ),
  );
}

getPurpleBar(BuildContext context) {
  return Positioned(
    top: MediaQuery.of(context).size.width / 2.91489361,
    left: MediaQuery.of(context).size.width / 1.7,
    child: Container(
      width: MediaQuery.of(context).size.width / 11.91304347,
      height: MediaQuery.of(context).size.width / 6.372093023,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(MediaQuery.of(context).size.width / 6.85),
        ),
        shape: BoxShape.rectangle,
        color: Colors.purpleAccent,
      ),
    ),
  );
}

getSquareBar(BuildContext context) {
  return Positioned(
    top: MediaQuery.of(context).size.width / 12.6581851,
    left: MediaQuery.of(context).size.width / 1.48,
    child: Container(
      child: Container(
        width: MediaQuery.of(context).size.width / 11.9130434782,
        height: MediaQuery.of(context).size.width / 11.9130434782,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(
                  MediaQuery.of(context).size.width / 6.227272727)),
          color: Colors.pink.shade300,
        ),
      ),
      width: MediaQuery.of(context).size.width / 11.9130434782,
      height: MediaQuery.of(context).size.width / 11.9130434782,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.blue.shade500,
      ),
    ),
  );
}

getTealBar(BuildContext context) {
  return Positioned(
    top: MediaQuery.of(context).size.width / 3.7027027,
    left: MediaQuery.of(context).size.width / 1.48,
    child: Container(
      width: MediaQuery.of(context).size.width / 11.9130434782,
      height: MediaQuery.of(context).size.width / 11.9130434782,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.tealAccent,
      ),
    ),
  );
}

getPinkBar(BuildContext context) {
  return Positioned(
    top: MediaQuery.of(context).size.width / 2.49090909,
    left: MediaQuery.of(context).size.width / 1.48,
    child: Container(
      width: MediaQuery.of(context).size.width / 11.9130434782,
      height: MediaQuery.of(context).size.width / 11.9130434782,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.pinkAccent,
      ),
    ),
  );
}

getPinkCircle(BuildContext context) {
  return Positioned(
    top: MediaQuery.of(context).size.width / 2.49090909,
    left: MediaQuery.of(context).size.width / 1.19,
    child: Container(
      width: MediaQuery.of(context).size.width / 13.7,
      height: MediaQuery.of(context).size.width / 13.7,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.pink.shade200,
      ),
    ),
  );
}

getTealCircle(BuildContext context) {
  return Positioned(
    left: MediaQuery.of(context).size.width / 1.31,
    child: Container(
      width: MediaQuery.of(context).size.width / 6.85,
      height: MediaQuery.of(context).size.width / 6.85,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.tealAccent,
      ),
    ),
  );
}

getWhiteCircle(BuildContext context) {
  return Positioned(
    top: MediaQuery.of(context).size.width / 3.425,
    left: MediaQuery.of(context).size.width / 1.31,
    child: Container(
      width: MediaQuery.of(context).size.width / 13.7,
      height: MediaQuery.of(context).size.width / 13.7,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
    ),
  );
}

getYellowCircle(BuildContext context) {
  return Positioned(
    top: MediaQuery.of(context).size.width / 6.68,
    left: MediaQuery.of(context).size.width / 1.28,
    child: Container(
      width: MediaQuery.of(context).size.width / 7.85,
      height: MediaQuery.of(context).size.width / 7.85,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.amber.shade300,
      ),
    ),
  );
}

getYellowBar(BuildContext context) {
  return Positioned(
    top: MediaQuery.of(context).size.width / 3.38271604,
    left: MediaQuery.of(context).size.width / 1.19,
    child: Container(
      width: MediaQuery.of(context).size.width / 13.7,
      height: MediaQuery.of(context).size.width / 10.538461538,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft:
                Radius.circular(MediaQuery.of(context).size.width / 15.222222),
            topRight:
                Radius.circular(MediaQuery.of(context).size.width / 15.222222)),
        shape: BoxShape.rectangle,
        color: Colors.yellowAccent,
      ),
    ),
  );
}
