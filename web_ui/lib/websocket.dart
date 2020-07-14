import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;

class WebSocketDemo extends StatefulWidget {
  @override
  _WebSocketDemoState createState() => _WebSocketDemoState();
}

class _WebSocketDemoState extends State<WebSocketDemo> {
  IOWebSocketChannel channel;

  @override
  void initState() {
    Future.microtask(() async {
      channel = IOWebSocketChannel.connect("ws://localhost:8080");
      //channel.sink.add("connected!");
      channel.stream.listen((message) {
        print(message);
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      child: RaisedButton(
        onPressed: () {
          channel.sink.add('from flutter');
        },
        child: Text("Send"),
      ),
    )));
  }
}
