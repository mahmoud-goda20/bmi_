import 'package:bmi_/cores/colors.dart';
import 'package:flutter/material.dart';

class AgeCounter extends StatefulWidget {
  const AgeCounter({
    super.key,
  });

  @override
  State<AgeCounter> createState() => _AgeCounterState();
}

class _AgeCounterState extends State<AgeCounter> {
  int ageCounter=0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              'age',
              style: TextStyle(
                color: appColors.mainW,
                fontSize: 17,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              ageCounter.toString(),
              style: TextStyle(
                color: appColors.mainW,
                fontSize: 40,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      ageCounter++;
                    });
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: appColors.changeColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add,
                      color: appColors.mainW,
                      size: 40,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      ageCounter--;
                    });
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: appColors.changeColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.remove,
                      color: appColors.mainW,
                      size: 40,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

