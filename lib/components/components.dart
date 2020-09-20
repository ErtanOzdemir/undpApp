import 'package:flutter/material.dart';
import 'package:undpapp/models/propertiesofgoals.dart';

class GoalPage extends StatelessWidget {
  int index;
  GoalPage(this.index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Color(0xff1B5EAC),
            flexibleSpace: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Image(
                    image: AssetImage("assets/backgrounds/$index.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            expandedHeight: 200,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding:
                      EdgeInsets.only(right: 20, top: 20, left: 20, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          nameOfGoals[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            letterSpacing: 5,
                            fontFamily: "oswald",
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  endIndent: 30,
                  indent: 30,
                ),
                Container(
                  padding:
                      EdgeInsets.only(right: 20, top: 20, left: 20, bottom: 20),
                  child: Text(
                    statements[index],
                    style: TextStyle(
                        fontSize: 23,
                        fontFamily: "domine",
                        color: Colors.grey[700],
                        letterSpacing: 2,
                        wordSpacing: 4),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
