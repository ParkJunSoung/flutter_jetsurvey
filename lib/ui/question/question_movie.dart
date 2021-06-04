import 'package:flutter/material.dart';
enum Gender {MOVIE1, MOVIE2,MOVIE3,MOVIE4,}
class QuestionMovie extends StatefulWidget {
  const QuestionMovie({Key key}) : super(key: key);

  @override
  _QuestionMovieState createState() => _QuestionMovieState();
}
class _QuestionMovieState extends State<QuestionMovie> {
  int _counter = 0;
  Gender _Movies = Gender.MOVIE1;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150.0, right: 30),
            child: Text(
              "What's your favorite \nmovie?",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text('Star Trek'),
            leading: Radio(
              value: Gender.MOVIE1,
              groupValue: _Movies,
              onChanged: (value) {
                setState(() {
                  _Movies = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('The social network'),
            leading: Radio(
              value: Gender.MOVIE2,
              groupValue: _Movies,
              onChanged: (value) {
                setState(() {
                  _Movies = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('Back to the future'),
            leading: Radio(
              value: Gender.MOVIE3,
              groupValue: _Movies,
              onChanged: (value) {
                setState(() {
                  _Movies = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('Outbreak'),
            leading: Radio(
              value: Gender.MOVIE4,
              groupValue: _Movies,
              onChanged: (value) {
                setState(() {
                  _Movies = value;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
