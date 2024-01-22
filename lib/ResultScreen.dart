import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ResultScreen extends StatelessWidget {
  final bmiModel;

  ResultScreen({this.bmiModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            child: bmiModel.isNormal
                ? SvgPicture.asset("assets/1547144758.svg", fit: BoxFit.contain)
                : SvgPicture.asset("assets/pitiful_heart.svg",
                    fit: BoxFit.contain),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "your BMI is ${bmiModel.bmi.round()}",
            style: TextStyle(
              color: Colors.red[700],
              fontSize: 34,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "${bmiModel.comments}",
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 18,
          ),
          bmiModel.isNormal
              ? Text(
                  "Hurry!! Your BMI is Normal yeaaah!!.",
                  style: TextStyle(
                    color: Colors.red[700],
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                )
              : Text(
                  "Sadly! your BMI is not Normal!.",
                  style: TextStyle(
                    color: Colors.red[700],
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.red,
              ),
              label: Text(
                "LETS CALCULATE AGAIN",
                style: TextStyle(color: Colors.pink),
              ),
            ),
            width: double.infinity,
            padding: EdgeInsets.only(left: 16, right: 16),
          )
        ],
      ),
    ));
  }
}
