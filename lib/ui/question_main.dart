import 'package:flutter/material.dart';
import 'package:flutter_jetsurvey/ui/compose_page.dart';
import 'package:flutter_jetsurvey/ui/question/day_picker.dart';
import 'package:flutter_jetsurvey/ui/question/question_free_time.dart';
import 'package:flutter_jetsurvey/ui/question/question_hero.dart';
import 'package:flutter_jetsurvey/ui/question/question_movie.dart';
import 'package:flutter_jetsurvey/ui/question/question_slider.dart';


class QuestionsMain extends StatefulWidget {

  @override
  _QuestionsMainState createState() => _QuestionsMainState();
}

class _QuestionsMainState extends State<QuestionsMain> {
  final PageController controller = PageController();
  final ButtonStyle style =
  ElevatedButton.styleFrom();

  var buttonText = 'Next';

  var pageList = [
    QuestionFreeTime(),
    QuestionHero(),
    QuestionMovie(),
    DayPickers(),
    QuestionSlider(),
  ];

  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
              height: 610.0,
              child: Container(
                color: Colors.white,
                child: PageView.builder(
                  physics:new NeverScrollableScrollPhysics(),
                  onPageChanged: (int index) {
                    setState(() {
                      _currentPageIndex = index % (pageList.length);
                    });
                  },
                  controller: controller,
                  itemBuilder: (context, index) {
                    return pageList[index % (pageList.length)];
                  },
                ),
              )),
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: previousPage,
                  child: Text('Previous',
                    style: TextStyle(color: Colors.purple,fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white.withOpacity(1.0),
                  ),
                ),
                Center(
                  child: Indicator(
                    controller: controller,
                    itemCount: pageList.length,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:8.0),
                  child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        if (_currentPageIndex == pageList.length -2){
                          buttonText = "Done";
                        }else if (_currentPageIndex != pageList.length -2){
                          buttonText = "Next";
                        }
                        nextPage();
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white.withOpacity(1.0),
                    ),
                    child: Text(buttonText,
                      style: TextStyle(color: Colors.purple,fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void nextPage(){
    if (_currentPageIndex == pageList.length -1 ){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ComposePage()),
      );
    }
    controller.animateToPage(controller.page.toInt() + 1,
        duration: Duration(milliseconds: 200),
        curve: Curves.easeIn
    );
  }

  void previousPage(){

    controller.animateToPage(controller.page.toInt() -1,
        duration: Duration(milliseconds: 200),
        curve: Curves.easeIn
    );
  }
}


class Indicator extends StatelessWidget {
  Indicator({
    this.controller,
    this.itemCount: 0,
  }) : assert(controller != null);
  final PageController controller;
  final int itemCount;
  final Color normalColor = Colors.blue;
  final Color selectedColor = Colors.purple;
  final double size = 20.0;
  final double spacing = 4.0;

  Widget _buildIndicator(
      int index, int pageCount, double dotSize, double spacing) {

    bool isCurrentPageSelected = index ==
        (controller.page != null ? controller.page.round() % pageCount : 0);

    return new Container(
      height: size,
      width: size + (2 * spacing),
      child: new Center(
        child: new Material(
          color: isCurrentPageSelected ? selectedColor : normalColor,
          type: MaterialType.circle,
          child: new Container(
            width: dotSize,
            height: dotSize,
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: new List<Widget>.generate(itemCount, (int index) {
        return _buildIndicator(index, itemCount, size, spacing);
      }),
    );
  }
}