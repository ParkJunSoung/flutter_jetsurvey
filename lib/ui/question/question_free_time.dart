import 'package:flutter/material.dart';
import 'package:flutter_jetsurvey/provider/provider.dart';
import 'package:provider/provider.dart';

class QuestionFreeTime extends StatefulWidget {
  const QuestionFreeTime({Key key}) : super(key: key);

  @override
  _QuestionFreeTimeState createState() => _QuestionFreeTimeState();
}

class _QuestionFreeTimeState extends State<QuestionFreeTime> {
  @override
  Widget build(BuildContext context) {
    var list = context.read<ListProvider>();
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 130.0, left: 10.0),
            child: Text(
              "In my free time I like to ...",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: ListView(

              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: list.freeTime.keys.map((String key) {
                return SizedBox(
                  height: 30,
                  child: CheckboxListTile(
                    value: list.freeTime[key],
                    title: new Text(key),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    activeColor: Colors.purple,
                    checkColor: Colors.white,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool value) {
                      setState(() {
                        list.freeTime[key] = value;
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
