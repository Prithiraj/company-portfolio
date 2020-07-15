import 'package:flutter/material.dart';

getBody(BuildContext context) {
  return ClipRRect(
    borderRadius: BorderRadius.only(
        topLeft:
            Radius.circular(MediaQuery.of(context).size.width / 21.076923)),
    child: Container(
      child: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.width / 11.416666,
            left: MediaQuery.of(context).size.width / 13.7),
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width / 13.7),
                child: Text(
                  'Choose Your Carrer !                 ',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 54.8,
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width / 13.7,
                    bottom: MediaQuery.of(context).size.width / 137),
//                            child: Text(
//                              'Just A               ',
//                              style: TextStyle(
//                                  fontSize: MediaQuery.of(context).size.width /
//                                      45.6666,
//                                  color: Colors.white,
//                                  fontWeight: FontWeight.bold),
//                            ),
              ),
              Text(
                'New Text',
                style: TextStyle(
                  fontFamily: "Inconsolata",
                  fontSize: MediaQuery.of(context).size.width / 35.6666,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width / 5.48,
                    top: MediaQuery.of(context).size.width / 17.125),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width / 45.6666),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                left:
                                    MediaQuery.of(context).size.width / 34.25),
                            child: Text(
                              "Made By ",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width /
                                      91.3333333,
                                  color: Colors.white),
                            ),
                          ),
                          Text("Sachin Singh"),
                        ],
                      ),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width / 11.9130434,
                  height: MediaQuery.of(context).size.width / 11.9130434,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue.shade500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      width: MediaQuery.of(context).size.width / 1.2,
      height: MediaQuery.of(context).size.height / 1.2,
      color: Colors.blue.shade900,
    ),
  );
}
