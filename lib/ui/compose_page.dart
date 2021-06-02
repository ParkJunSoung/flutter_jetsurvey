import 'package:flutter/material.dart';
import 'package:flutter_jetsurvey/ui/home.dart';

class ComposePage extends StatelessWidget {
  const ComposePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 130),
            child: Text(
              "Compose",
              style: TextStyle(fontSize: 60),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Congratulations, you are Compose",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: Text(
              'You are a curious developer, always \nwilling to try something new.You want \nto stay up to date with the trends to \nCompose is your middle name',
              style: TextStyle(fontSize: 22),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 240.0, left: 30),
            child: SizedBox(
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Text(
                  "Done",
                  style: TextStyle(color: Colors.purple, fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
