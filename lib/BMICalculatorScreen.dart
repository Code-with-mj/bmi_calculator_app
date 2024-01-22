import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BMICalculatorScreen extends StatefulWidget {
  @override
  _BMICalculatorScreenState createState() => _BMICalculatorScreenState();
}

class _BMICalculatorScreenState extends State<BMICalculatorScreen> {
  double _heightOfUser = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(32),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 200,
                width: 200,
                child: SvgPicture.asset("assets/fastfood_worker.svg",
                    fit: BoxFit.contain),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "BMI Calculator",
                style: TextStyle(
                  color: Colors.red[700],
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "We care about your health",
                style: TextStyle(
                  color: Colors.deepPurple[700],
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "height (cm)",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Slider(
                  min: 80.0,
                  max: 250.0,
                  onChanged: (height) {
                    setState(() {
                      _heightOfUser = height;
                    });
                  },
                  value: _heightOfUser,
                  divisions: 100,
                  activeColor: Colors.red,
                  label: "$_heightOfUser",
                ),
              )
            ]),
      )),
    );
  }
}
