import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_jetsurvey/provider/provider.dart';
import 'package:flutter_jetsurvey/ui/question_main.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Provider.of<ListProvider>(context, listen: false);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 20),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/tick.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Text(
              'Jetsurvey',
              style: TextStyle(fontSize: 50),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Better surveys with jetpack Compose',
                style: TextStyle(fontSize: 19),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                'Sign in or create an account',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                width: 350,
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: 350,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple.withOpacity(1.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => QuestionsMain()));
                  },
                  child: Text('Continue', style: TextStyle(fontSize: 17)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Text(
                "or",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            SizedBox(
              width: 350.0,
              height: 40.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white.withOpacity(1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => QuestionsMain()));
                },
                child: Text(
                  'Sign in as guest',
                  style: TextStyle(color: Colors.deepPurple, fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
