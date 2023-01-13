// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final bool isMale;
  final int age;
  final int result;
  String category='';

  BmiResult({
    required this.isMale,
    required this.result,
    required this.age,
  }) {
    if (isMale && age >= 20 || !isMale && age >= 18) {
      if (result < 16) {
        category = 'Severe Thinness \n نحافة شديده';
      }
      else if (result >= 16 && result < 17) {
        category = 'Moderate Thinness \n نحافة معدتلة';
      }
      else if (result >= 17 && result < 19) {
        category = 'mild Thinness  \n نحافة خفيفه ';
      }
      else if (result >= 19 && result < 25) {
        category = 'Normal \n طبيعي';
      }
      else if (result >= 25 && result < 30) {
        category = 'Overweight \n زيادة الوزن';
      } else if (result >= 30 && result < 35) {
        category = 'Obese class I \n فئة السمنة الاولي';
      } else if (result >= 35 && result < 40) {
        category = 'Obese class II \n فئة السمنة الثانيه';
      } else if (result >= 40) {
        category = 'Obese class III \n فئة السمنة الثالثه';
      }
    }
    else {
      category = '';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Center(
          child: Text(
            'BMI Result',
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gender : ${isMale ? 'Male' : 'Female'}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            Text('Result : $result ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            Text('Age : $age',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),

            Text(category,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
