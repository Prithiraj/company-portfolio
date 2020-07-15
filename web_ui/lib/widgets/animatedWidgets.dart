import 'package:flutter/material.dart';

getYellowBall(Animation yellowBall, BuildContext context) {
  return AnimatedBuilder(
      animation: yellowBall,
      builder: (context, child) {
        return Positioned(
          top: yellowBall.value,
          left: MediaQuery.of(context).size.width / 1.7,
          child: Container(
            width: MediaQuery.of(context).size.width / 11.91304347,
            height: MediaQuery.of(context).size.width / 11.91304347,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.yellow,
              boxShadow: [
                BoxShadow(
                    color: Colors.black45,
                    offset: Offset(-1, 10),
                    blurRadius: MediaQuery.of(context).size.width / 137),
              ],
            ),
          ),
        );
      });
}

getRedBall(Animation redBall, BuildContext context) {
  return AnimatedBuilder(
    animation: redBall,
    builder: (context, child) {
      return Positioned(
        top: redBall.value,
        left: MediaQuery.of(context).size.width / 1.48,
        child: Container(
          width: MediaQuery.of(context).size.width / 13.0476190,
          height: MediaQuery.of(context).size.width / 13.0476190,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.deepOrange.shade500,
          ),
        ),
      );
    },
  );
}

getPurpleBarAnim(Animation purpleBar, BuildContext context) {
  return AnimatedBuilder(
    animation: purpleBar,
    builder: (context, child) {
      return Positioned(
        top: purpleBar.value,
        left: MediaQuery.of(context).size.width / 1.48,
        child: Container(
          width: MediaQuery.of(context).size.width / 11.9130434782, //
          height: MediaQuery.of(context).size.width / 5.48,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black45,
                  offset: Offset(-1, 10),
                  spreadRadius: -4,
                  blurRadius: MediaQuery.of(context).size.width / 137),
              BoxShadow(
                  color: Colors.black45,
                  offset: Offset(5, -2),
                  spreadRadius: -4.0,
                  blurRadius: MediaQuery.of(context).size.width / 274),
              BoxShadow(
                  color: Colors.black45,
                  offset: Offset(-5, -2),
                  spreadRadius: -4.0,
                  blurRadius: MediaQuery.of(context).size.width / 274),
            ],
            borderRadius: BorderRadius.all(Radius.circular(
                MediaQuery.of(context).size.width / 15.222222222)),
            shape: BoxShape.rectangle,
            color: Colors.purpleAccent,
          ),
        ),
      );
    },
  );
}

getOrangeBar(Animation orangeBar, BuildContext context) {
  return AnimatedBuilder(
    animation: orangeBar,
    builder: (context, child) {
      return Positioned(
        top: orangeBar.value,
        left: MediaQuery.of(context).size.width / 1.31,
        child: Container(
          width: MediaQuery.of(context).size.width / 13.7,
          height: MediaQuery.of(context).size.width / 3.425,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(MediaQuery.of(context).size.width / 15.2222222),
            ),
            shape: BoxShape.rectangle,
            color: Colors.orangeAccent,
          ),
        ),
      );
    },
  );
}

getBlueBallLeft(Animation blueBallLeft, BuildContext context) {
  return AnimatedBuilder(
    animation: blueBallLeft,
    builder: (context, child) {
      return Positioned(
        top: MediaQuery.of(context).size.width / 4.1515151,
        left: blueBallLeft.value,
        child: Container(
          width: MediaQuery.of(context).size.width / 11.91304347,
          height: MediaQuery.of(context).size.width / 11.91304347,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black45,
                  offset: Offset(-1, 10),
                  spreadRadius: -4,
                  blurRadius: MediaQuery.of(context).size.width / 137),
              BoxShadow(
                  color: Colors.black45,
                  offset: Offset(5, -2),
                  spreadRadius: -4.0,
                  blurRadius: MediaQuery.of(context).size.width / 274),
            ],
            shape: BoxShape.circle,
            color: Colors.white,
          ),
        ),
      );
    },
  );
}

getStackedBox(
    Animation stackedBox, BuildContext context, Animation imageSlide) {
  return AnimatedBuilder(
    animation: stackedBox,
    builder: (context, child) {
      return Positioned(
        top: stackedBox.value,
        left: MediaQuery.of(context).size.width / 1.31,
        child: Container(
          child: Stack(
            children: <Widget>[
              Positioned(
                  top: imageSlide.value,
                  left: 75,
                  child: Icon(
                    Icons.android,
                    size: 50,
                  )),
            ],
          ),
          width: MediaQuery.of(context).size.width / 6.85,
          height: MediaQuery.of(context).size.width / 6.85,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black45,
                  offset: Offset(-1, 30),
                  spreadRadius: MediaQuery.of(context).size.width / 274,
                  blurRadius: MediaQuery.of(context).size.width / 45.6666),
              BoxShadow(
                  color: Colors.black45,
                  offset: Offset(-5, -2),
                  spreadRadius: -MediaQuery.of(context).size.width / 274,
                  blurRadius: MediaQuery.of(context).size.width / 171.25),
              BoxShadow(
                  color: Colors.black45,
                  offset: Offset(5, -2),
                  spreadRadius: -MediaQuery.of(context).size.width / 274,
                  blurRadius: MediaQuery.of(context).size.width / 13.7),
            ],
            shape: BoxShape.circle,
            color: Colors.blue.shade600,
          ),
        ),
      );
    },
  );
}
