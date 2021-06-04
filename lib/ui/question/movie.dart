import 'package:flutter/material.dart';
enum Gender {MOVIE1, MOVIE2,MOVIE3,MOVIE4,}
class Movie extends StatefulWidget {
  const Movie({Key key}) : super(key: key);

  @override
  _MovieState createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  int _counter = 0;
  var _isChecked = false;
  Gender _Movies = Gender.MOVIE1;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
      ),
    );
  }
}