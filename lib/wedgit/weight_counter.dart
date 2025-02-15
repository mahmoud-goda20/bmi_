import 'package:bmi_/cores/colors.dart';
import 'package:flutter/material.dart';

class WieghtCounter extends StatelessWidget {
  WieghtCounter({super.key, required this.onPressedwi,required this.onPressedwd,required this.text});
  Function() onPressedwi;
  Function() onPressedwd;
  int text;

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
              'Weight',
              style: TextStyle(
                color: appColors.mainW,
                fontSize: 17,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              text.toString(),
              style: TextStyle(
                color: appColors.mainW,
                fontSize: 40,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap:onPressedwi,
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
                  onTap: onPressedwd,
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
