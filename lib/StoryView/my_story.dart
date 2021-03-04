import 'package:demo/StoryView/StoryViewContainer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyStory());
}

class MyStory extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: StoryViewContainer(),
    );
  }
}
