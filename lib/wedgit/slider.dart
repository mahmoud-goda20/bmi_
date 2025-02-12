import 'package:bmi_/cores/colors.dart';
import 'package:flutter/material.dart';

class SliderShape extends StatefulWidget {
  const SliderShape({
    super.key,
  });

  @override
  State<SliderShape> createState() => _SliderShapeState();
}

class _SliderShapeState extends State<SliderShape> {
  double heightt = 100;
  
  @override
  Widget build(BuildContext context) {
    return Row(
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
                      heightt.toInt().toString(),
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
                  value: heightt,
                  onChanged: (value) {
                    setState(() {
                      heightt = value;
                     
                    });
                  },
                  thumbColor: appColors.buttonColor,
                  activeColor: appColors.buttonColor,
                  inactiveColor: appColors.changeColor,
                  min: 70,
                  max: 210,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
