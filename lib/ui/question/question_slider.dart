import 'package:flutter/material.dart';

class QuestionSlider extends StatefulWidget {
  const QuestionSlider({Key key}) : super(key: key);

  @override
  _QuestionSliderState createState() => _QuestionSliderState();
}

class _QuestionSliderState extends State<QuestionSlider> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:200.0,left: 20.0,right: 30.0),
        child: Column(
          children: [
            Text("How do you feel about selfies \u{1F933}?",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("😒",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 310,
                    child: Slider(
                      activeColor: Colors.purple,
                      inactiveColor: Colors.purple[100],
                      value: _currentSliderValue,
                      min: 0,
                      max: 100,
                      divisions: 10,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                  ),
                  Text("\u{1F60D}",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}