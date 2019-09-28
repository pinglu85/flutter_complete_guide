import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp()); // The runApp() function takes the given Widget
// and makes it the root of the widget tree.

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // MyApp will be passed to the T type parameter which has a constraint
  // that T needs to be a subclass of StatefulWidget:
  // abstract class State<T extends StatefulWidget> extends Diagnosticable {}
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      title: 'My First App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () {
                // ...
                print('Answer chosen!');
              },
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => print('Answer chosen!'),
            ),
          ],
        ),
      ),
    );
  }
}
