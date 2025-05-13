import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrainingScreen extends StatefulWidget {

  final String title;
  final int age;
  const TrainingScreen({super.key, required this.title, this.age = 10});

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
  @override
  Widget build(BuildContext context) {
    double paddingTop = MediaQuery.of(context).padding.top;
    double paddingBottom = MediaQuery.of(context).padding.bottom;
    double height = MediaQuery.of(context).size.height;

    debugPrint("padding Top : $paddingTop");
    debugPrint("Padding Bottom : $paddingBottom");
    debugPrint("Height : $height");

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.redAccent,
              height: height / 2 - ((paddingTop + paddingBottom) / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Ini adalah Text'),
                  Icon(CupertinoIcons.alarm, color: hexToColor('#00ffff')),
                  Icon(CupertinoIcons.alarm_fill, color: hexToColor('#00ffff')),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, 
                        child: Text("Test ${widget.title} - ${widget.age}")
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.greenAccent,
              height: height / 2 - ((paddingTop + paddingBottom) / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text("Ini Button 1")
                  ),
                  Container(
                    color: Colors.yellow,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                        child: Container(
                          color: Colors.blue,
                          child: Text(
                              "Ini Text 2",
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                          ),
                        ),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent
                      ),
                      onPressed: () {},
                      child: Text("Ini Button 3")
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }

  Color hexToColor(String hex) {
    String newColor = '0xff$hex';
    newColor = newColor.replaceAll('#', '');
    int finalColor = int.parse(newColor);
    return Color(finalColor);
  }
}
