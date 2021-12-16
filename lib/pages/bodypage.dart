// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors, non_constant_identifier_names

import 'dart:math';

import 'package:bm_cal/constants/constants.dart';
import 'package:bm_cal/pages/result_screen.dart';
import '../widgets/widgets.dart';
import 'package:flutter/material.dart';

enum Geder { male, female }

class bodypage extends StatefulWidget {
  const bodypage({Key? key}) : super(key: key);

  @override
  State<bodypage> createState() => _bodypageState();
}

class _bodypageState extends State<bodypage> {
  double height = 180;
  double Weight = 65;
  int age = 20;

  // int SelectedGender = 0; // 0 = male , 1 = female

  void _goRusultScreen() {
    double result = Weight / pow((height / 100), 2);
    // print(result.toStringAsFixed(1));
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ResultScreen(
          result: result,
        ),
      ),
    );
  }

  Geder SelectedGender = Geder.male;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: reuseableWidget(
                // Selected: SelectedGender == 0 ? true : false,  // Those and other way
                // ontap: () => setState(() => SelectedGender = 0),
                Selected: SelectedGender == Geder.male ? true : false,
                ontap: () => setState(() => SelectedGender = Geder.male),
                child: const IconContent(
                  title: 'Male',
                  iconData: Icons.male,
                ),
              ),
            ),
            Expanded(
                child: reuseableWidget(
              // Selected: SelectedGender == 1 ? true : false,
              // ontap: () => setState(() => SelectedGender = 1),
              Selected: SelectedGender == Geder.female ? true : false,
              ontap: () => setState(() => SelectedGender = Geder.female),
              child: const IconContent(
                title: 'Female',
                iconData: Icons.female,
              ),
            )),
          ],
        )),
        Expanded(
            child: reuseableWidget(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Height',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    height.toStringAsFixed(1),
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'cm',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SliderTheme(
                data: const SliderThemeData(
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Colors.grey,
                    thumbColor: KBottonContainerColor,
                    thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 16,
                      elevation: 10,
                    )),
                child: Slider(
                  value: height,
                  onChanged: (nwvalue) {
                    setState(() {
                      height = nwvalue;
                    });
                  },
                  min: 1,
                  max: 380,
                ),
              )
            ],
          ),
        )),
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: reuseableWidget(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Weight',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        Weight.toStringAsFixed(1),
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'kg',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundBottom(
                        iconData: Icons.add,
                        onpress: () => setState(() => Weight++),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      RoundBottom(
                        iconData: Icons.remove,
                        onpress: () {
                          setState(() {
                            Weight <= 1 ? Weight = 1 : Weight--;
                            // if (Weight <= 1) {
                            //   Weight = 1;
                            // } else {
                            //   Weight--;
                            // }
                          });
                        },
                      )
                    ],
                  ),
                ],
              ),
            )),
            Expanded(
                child: reuseableWidget(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Age',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        age.toString(),
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'yrs',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundBottom(
                        iconData: Icons.add,
                        onpress: () => setState(() => age++),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      RoundBottom(
                        iconData: Icons.remove,
                        onpress: () =>
                            setState(() => age <= 1 ? age = 1 : age--),
                      )
                    ],
                  ),
                ],
              ),
            )),
          ],
        )),
        RawMaterialButton(
          onPressed: () => _goRusultScreen(),
          fillColor: KBottonContainerColor,
          constraints: BoxConstraints().tighten(
            width: double.infinity,
            height: 56,
          ),
          child: const Text(
            "Calculate",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}

// class CustomBottom extends StatelessWidget {
//   final Function? ontap;
//   final String? title;

//   const CustomBottom({required this.ontap,required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return RawMaterialButton(
//       onPressed: () => ontap,
//       fillColor: KBottonContainerColor,
//       constraints: BoxConstraints().tighten(
//         width: double.infinity,
//         height: 56,
//       ),
//       child:  Text(
//         title?? 'Calculate',
//         style: TextStyle(
//           fontSize: 24,
//           fontWeight: FontWeight.w500,
//         ),
//       ),
//     );
//   }
// }
