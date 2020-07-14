import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

extension HoverExtensions on Widget {
  // Get a regerence to the body of the view
  static final appContainer =
      html.window.document.getElementById('app-container');
  Widget get showCursorOnHover {
    return MouseRegion(
      child: this,
      // When the mouse enters the widget set the cursor to pointer
      onHover: (event) {
        appContainer.style.cursor = 'pointer';
      },
      // When it exits set it back to default
      onExit: (event) {
        appContainer.style.cursor = 'default';
      },
    );
  }
}

///this function also does the same job as above function
Widget showButtonAsCursor(Widget child) {
  final appContainer = html.window.document.querySelectorAll('flt-glass-pane');

  return MouseRegion(
    child: child,
    // When the mouse enters the widget set the cursor to pointer
    onHover: (event) {
      print('hover');
      appContainer.style.cursor = 'pointer';
    },
    // When it exits set it back to default
    onExit: (event) {
      appContainer.style.cursor = 'default';
    },
  );
}
