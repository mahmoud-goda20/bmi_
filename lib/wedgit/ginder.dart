import 'package:bmi_/cores/colors.dart';
import 'package:flutter/material.dart';

class Ginder extends StatefulWidget {
  const Ginder({
    super.key,
  });

  @override
  State<Ginder> createState() => _GinderState();
}

class _GinderState extends State<Ginder> {
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isMale = true;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: isMale
                        ? appColors.buttonColor
                        : appColors.containerColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.male,
                      color: appColors.mainW,
                      size: 100,
                    ),
                    Text('male',
                        style: TextStyle(
                            color: appColors.mainW,
                            fontSize: 17,
                            fontWeight: FontWeight.w300)),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isMale = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: !isMale
                        ? appColors.buttonColor
                        : appColors.containerColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.female,
                      color: appColors.mainW,
                      size: 100,
                    ),
                    Text('female',
                        style: TextStyle(
                            color: appColors.mainW,
                            fontSize: 17,
                            fontWeight: FontWeight.w300)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
