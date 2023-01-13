
import 'dart:math';
import 'package:flutter/material.dart';

import 'bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {
  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  int weight=60,age=18;
  double height=120.0;
  double result=0.0;
  bool isMale=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=true;
                          });
                        },
                        child: Container(
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0,),
                            color: isMale?Colors.red:Colors.white12,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 90.0,
                                color: Colors.white,
                              ),
                              // Image(
                              //     image:AssetImage('assets/images/male.png'),
                              //   width: 70.0,
                              //   height: 70.0,
                              //   color: Colors.white,
                              // ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'MALE',
                                style:TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.grey[300],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=false;
                          });
                        },
                        child: Container(
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0,),
                            color: isMale?Colors.white12:Colors.red,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 90.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'FEMALE',
                                style:TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.grey[300],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0,),
                    color: Colors.white12,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25.0,

                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontSize: 40.0,

                            ),
                          ),
                          SizedBox(width: 10.0,),
                          Text(
                            'cm',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,

                            ),
                          ),

                        ],
                      ),
                      Slider(
                        value: (height),
                        max: 220.0,
                        min: 80.0,
                        activeColor: Colors.white,
                        inactiveColor: Colors.grey,
                        thumbColor: Colors.red,
                        onChanged: (value){
                          setState((){
                            height=value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0,),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0,),
                            color: Colors.white12
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 20.0,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  '$weight',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                    fontSize: 40.0,

                                  ),
                                ),
                                Text(
                                  'kg',
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 20.0,

                                  ),
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  mini:true,
                                  heroTag: 'WEIGHT-',
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  backgroundColor: Colors.grey[700],
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                                SizedBox(width: 10.0,),
                                FloatingActionButton(
                                  heroTag: 'WEIGHT+',
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  mini: true,
                                  backgroundColor: Colors.grey[700],
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),

                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0,),
                            color: Colors.white12
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 20.0,
                              ),
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                fontSize: 40.0,

                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  mini:true,
                                  heroTag: 'age-',
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  backgroundColor: Colors.grey[700],
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                                SizedBox(width: 10.0,),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  heroTag: 'age +',  //tag for floatingActionButton
                                  mini: true,
                                  backgroundColor: Colors.grey[700],
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),

                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.red,
              child: MaterialButton(
                height: 50.0,
                onPressed: (){
                  result=weight/pow(height/100, 2);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>BmiResult(
                        result: result.round(),
                        isMale: isMale,
                        age: age,
                      ),
                    ),
                  );
                  setState(() {
                  });
                },
                child: const Text(
                  'Calculator',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
