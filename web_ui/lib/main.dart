import 'package:flutter/material.dart';
import 'controllers.dart';
import 'widgets/headerWidget.dart';
import 'widgets/mainBody.dart';
import 'widgets/constantShapeWidgets.dart';
import 'widgets/animatedWidgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    imageSlideController =
        AnimationController(vsync: this, duration: Duration(seconds: 6));

    final Animation imageSlideCurve =
        CurvedAnimation(parent: imageSlideController, curve: Curves.easeInOut);

    imageSlide = Tween<double>(begin: 55, end: 00).animate(imageSlideCurve);
    imageSlideController.forward();

    imageSlide.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        imageSlideController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        imageSlideController.forward();
      }
    });

    redBallController =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    final Animation redBallCurve =
        CurvedAnimation(parent: redBallController, curve: Curves.easeIn);
    redBall = Tween<double>(begin: 250, end: 470).animate(redBallCurve);
    redBallController.forward();

    redBall.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        redBallController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        redBallController.forward();
      }
    });

    blueBallLeftController =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    final Animation blueBallLeftCurve =
        CurvedAnimation(parent: blueBallLeftController, curve: Curves.bounceIn);
    blueBallLeft =
        Tween<double>(begin: 830, end: 1040).animate(blueBallLeftCurve);
    blueBallLeftController.forward();

    blueBallLeft.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        blueBallLeftController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        blueBallLeftController.forward();
      }
    });

    orangeBarController =
        AnimationController(vsync: this, duration: Duration(seconds: 6));
    final Animation orangeBarCurve =
        CurvedAnimation(parent: orangeBarController, curve: Curves.decelerate);

    orangeBar = Tween<double>(begin: 150, end: 450).animate(orangeBarCurve);

    orangeBarController.forward();

    orangeBar.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        orangeBarController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        orangeBarController.forward();
      }
    });

    stackedBoxController =
        AnimationController(vsync: this, duration: Duration(seconds: 6));
    final Animation stackedCurve =
        CurvedAnimation(parent: stackedBoxController, curve: Curves.easeInOut);
    stackedBox = Tween<double>(begin: 205, end: 450).animate(stackedCurve);
    //  imageSlide = Tween<double>(begin: 75, end: 00);

    stackedBoxController.forward();

    stackedBox.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        stackedBoxController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        stackedBoxController.forward();
      }
    });

    purpleBarController =
        AnimationController(vsync: this, duration: Duration(seconds: 8));
    final Animation curvepurple =
        CurvedAnimation(parent: purpleBarController, curve: Curves.easeInCubic);
    purpleBar = Tween<double>(begin: 220, end: 400).animate(curvepurple);
    purpleBarController.forward();

    purpleBar.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        purpleBarController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        purpleBarController.forward();
      }
    });

    yellowBallController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));

    final Animation curveYellow =
        CurvedAnimation(parent: yellowBallController, curve: Curves.easeInBack);

    yellowBall = Tween<double>(begin: 120, end: 380).animate(curveYellow);

    yellowBallController.forward();

    yellowBall.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        yellowBallController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        yellowBallController.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[getRow(context), getBody(context)],
          ),
          getBlueBar(context),
          getYellowBall(yellowBall, context),
          getPurpleBar(context),
          getRedBall(redBall, context),
          getSquareBar(context),
          getPurpleBarAnim(purpleBar, context),
          getTealBar(context),
          getPinkBar(context),
          getTealCircle(context),
          getOrangeBar(orangeBar, context),
          getWhiteCircle(context),
          getYellowCircle(context),
          getYellowBar(context),
          getPinkCircle(context),
          getBlueBallLeft(blueBallLeft, context),
          getStackedBox(stackedBox, context, imageSlide)
        ],
      ),
    );
  }
}
