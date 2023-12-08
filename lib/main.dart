import 'package:flutter/material.dart';

void main() {

  var companyNameDecoration = BoxDecoration(color: Colors.black,
                              border: Border.all(color: Colors.white, width: 15),
                              borderRadius: const BorderRadius.all(Radius.zero));
  const companyNameStyle = TextStyle(color: Colors.white, fontSize: 80);
  var companyNameWidget = const Text('GitHub', style: companyNameStyle);
  const questionWidgetStyle = TextStyle(color: Colors.white, fontSize: 50);
  var questionWidget = const Text('How do you like your GitHub experience so far?',
      style: questionWidgetStyle);
  var thumbsWidget = const Row(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.thumb_up, color: Colors.yellow, size: 200),
      Icon(Icons.thumb_down, color: Colors.yellow, size: 200)]
  );

  runApp(
      MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.black,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Container(
                alignment: Alignment.center,
                height: 200,
                decoration: companyNameDecoration,
                margin: const EdgeInsets.all(25),
                child: companyNameWidget),
                questionWidget,
                thumbsWidget]
            )
            )
          )
  );
}
