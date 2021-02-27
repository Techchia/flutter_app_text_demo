import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:Text("Flutter Text Demo")
        ),
        body: Container(
            child: Center(
              child: RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    children: <TextSpan>[
                      TextSpan(text: ' Sign up',
                          style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                            print('Sign Up');
                            }
                      ),
                      TextSpan(text: ' OR',
                      ),
                      TextSpan(text: ' Join Now',
                          style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Join Now');
                            }
                      )
                    ]
                ),
              ),
            )
        )
    );
  }
}
