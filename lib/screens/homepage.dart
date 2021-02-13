import 'package:flutter/material.dart';
import 'package:flutter_todo_app/screens/taskpage.dart';
import 'package:flutter_todo_app/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: Color(0xFFF6F6F6),
        width: double.infinity,
        padding: EdgeInsets.all(24.0),
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 32.0),
                child: Image(
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    TaskCardWidget(title: "Kill People", desc: "Nothing important"),
                    TaskCardWidget(title: "Kill People", desc: "Nothing important"),
                    TaskCardWidget()
                  ],
                ),
              )
            ],
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => TaskPage()
                ),);
              },
              child: Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Color(0XFF7349FE),
                  borderRadius: BorderRadius.circular(50.0)
                ),
                child: Image(image: AssetImage(
                  "assets/images/add_icon.png"
                )),
              ),
            ),
          )
        ]),
      ),
    ));
    ;
  }
}
