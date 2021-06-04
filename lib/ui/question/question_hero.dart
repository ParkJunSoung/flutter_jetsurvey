import 'package:flutter/material.dart';
import 'package:flutter_jetsurvey/provider/provider.dart';
import 'package:provider/provider.dart';

class QuestionHero extends StatefulWidget {
  const QuestionHero({Key key}) : super(key: key);

  @override
  _QuestionHeroState createState() => _QuestionHeroState();
}

class _QuestionHeroState extends State<QuestionHero> {
  @override
  Widget build(BuildContext context) {
    var list = context.read<ListProvider>();
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:150.0, right: 60.0),
            child: Text("Pick a superhero",
              style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const  NeverScrollableScrollPhysics(),
              children: list.superhero.keys.map((String key) {
                return SizedBox(
                  height: 30,
                  child: new RadioListTile(
                    value: list.superhero[key],
                    title: new Text(key),
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.purple,
                    onChanged: (bool value) {
                      setState(() {
                        list.superhero[key] = value;
                      });
                    },
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}