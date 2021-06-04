import 'package:flutter/material.dart';
  enum QuestionHeros {HERO1, HERO2,HERO3,HERO4,}
class QuestionHero extends StatefulWidget {
  const QuestionHero({Key key}) : super(key: key);

  @override
  _QuestionHeroState createState() => _QuestionHeroState();
}

class _QuestionHeroState extends State<QuestionHero> {
  int _counter = 0;
  QuestionHeros _Heros = QuestionHeros.HERO1;
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
            padding: const EdgeInsets.only(top:150.0, right: 60.0),
            child: Text("Pick a superhero",
              style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text('Spider man (Avengers)'),
            leading: Radio(
              value: QuestionHeros.HERO1,
              groupValue: _Heros,
              onChanged: (value) {
                setState(() {
                  _Heros = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('Iroin man (Avengers)'),
            leading: Radio(
              value: QuestionHeros.HERO2,
              groupValue: _Heros,
              onChanged: (value) {
                setState(() {
                  _Heros = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('Uni-Kitty (Lego Movie)'),
            leading: Radio(
              value: QuestionHeros.HERO3,
              groupValue: _Heros,
              onChanged: (value) {
                setState(() {
                  _Heros = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('Captain Planet'),
            leading: Radio(
              value: QuestionHeros.HERO4,
              groupValue: _Heros,
              onChanged: (value) {
                setState(() {
                  _Heros = value;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}