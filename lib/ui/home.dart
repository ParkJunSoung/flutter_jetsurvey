import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150, bottom: 20),
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
              padding: const EdgeInsets.only(top: 120),
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
            Container(
              color: Colors.purple,
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text('dd'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
