import 'package:bmi_/result.dart';
import 'package:bmi_/wedgit/age_counter.dart';
import 'package:bmi_/wedgit/weight_counter.dart';
import 'package:bmi_/wedgit/ginder.dart';
import 'package:flutter/material.dart';
import 'cores/colors.dart';

class Bmindex extends StatefulWidget {
  Bmindex({super.key});

  @override
  State<Bmindex> createState() => _BmindexState();
}

class _BmindexState extends State<Bmindex> {
  int w = 0;
  double h = 100;
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
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: appColors.containerColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            'Height',
                            style: TextStyle(
                              color: appColors.mainW,
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                h.toInt().toString(),
                                style: TextStyle(
                                  color: appColors.mainW,
                                  fontSize: 40,
                                ),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              Text(
                                'cm',
                                style: TextStyle(
                                  color: appColors.mainW,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                          Slider(
                            value: h,
                            onChanged: (value) {
                              setState(() {
                                h = value;
                              });
                            },
                            max: 280,
                            min: 70,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: Row(
                children: [
                  WieghtCounter(
                    text: w,
                    onPressedwi: () => setState(() {
                      w++;
                    }),
                    onPressedwd: () => setState(() {
                      w--;
                    }),
                  ),
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
                                    Result(res: w / ((h * h)/10000))));
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
