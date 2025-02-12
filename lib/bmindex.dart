import 'package:bmi_/result.dart';
import 'package:bmi_/wedgit/age_counter.dart';
import 'package:bmi_/wedgit/weight_counter.dart';
import 'package:bmi_/wedgit/ginder.dart';
import 'package:bmi_/wedgit/slider.dart';
import 'package:flutter/material.dart';
import 'cores/colors.dart';

class Bmindex extends StatefulWidget {
  const Bmindex({super.key});

  @override
  State<Bmindex> createState() => _BmindexState();
}

class _BmindexState extends State<Bmindex> {
  
  int weightC =90;
  double heightt = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.mainB,
      appBar: AppBar(
        backgroundColor: appColors.mainB,
        title: Text(
          '🍕Bmindex',
          style: TextStyle(
            color: appColors.mainW,
            fontSize: 15,
          ),
        ),
      ),
      body: Expanded(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(child: Ginder()),
              SizedBox(
                height: 10,
              ),
              Expanded(child: SliderShape()),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: Row(
                children: [
                  WieghtCounter(),
                  SizedBox(
                    width: 10,
                  ),
                  AgeCounter()
                ],
              )),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: appColors.buttonColor,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Result(res: result(weightC, heightt))));
                      },
                      child: Text(
                        'Calculate',
                        style: TextStyle(
                          color: appColors.mainW,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ))),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}

double result(int weightC, double heightt) {
  return weightC / (heightt * heightt);
}
