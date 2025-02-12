import 'package:bmi_/bmindex.dart';
import 'package:bmi_/cores/colors.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key,required this.res});

  final double res;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.mainB,
      appBar: AppBar(
        backgroundColor: appColors.mainB,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Bmindex()));
            },
            icon: Icon(
              Icons.arrow_back,
              color: appColors.mainW,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your result',
              style: TextStyle(
                color: appColors.mainW,
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: appColors.containerColor,
                  ),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            
                            children: [
                              SizedBox(height: 40,),
                              Text('NORMAL',style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w500,
                                fontSize: 20
                              ),),
                              SizedBox(height: 150,),
                            Text(
                            res.toString(),
                            style: TextStyle(
                              color: appColors.mainW,
                              fontSize: 70,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 150,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('your work weight is absolutely normal,',style: TextStyle(
                            color: appColors.mainW,
                            
                          ),),
                          Text('Good job!💪',style: TextStyle(
                            color: appColors.mainW,))
                            ],
                          )
                          ],),
                        )
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: appColors.buttonColor,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Bmindex()));
                    },
                    child: Text(
                      'Recalculate',
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
    );
  }
}
