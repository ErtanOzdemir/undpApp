import 'package:flutter/material.dart';
import 'package:undpapp/components/components.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Color(0xff1B5EAC),
              title: Center(
                child: Container(
                  width: 200,
                  height: 50,
                  child: Image(
                    image: AssetImage("assets/undp.png"),
                  ),
                ),
              )),
          body: Grids(),
        ),
      ),
    );
  }
}

class Grids extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 18,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return SizedBox(
            child: Card(
                child: GestureDetector(
              child: Container(
                child: Image(image: AssetImage("assets/$index.png")),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GoalPage(index),
                    ));
              },
            )),
          );
        });
  }
}
