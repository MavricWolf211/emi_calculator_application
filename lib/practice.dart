import "package:flutter/material.dart";
import "dart:math";

void main() => runApp(
    MaterialApp(
        title: 'EMI Calc',
        theme: ThemeData(
          primaryColor: Colors.redAccent,
          hintColor: Colors.redAccent,
        ),

        home: HomeScreen()
    )
);

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

  List _tenureTypes = [ 'Month(s)', 'Year(s)' ];
  String _tenureType = "Year(s)";
  String _emiResult = "";

  final TextEditingController _principalAmount = TextEditingController();
  final TextEditingController _interestRate = TextEditingController();
  final TextEditingController _tenure = TextEditingController();

  bool _switchValue = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(


        body: Center(
          child: Text(
            'apple'
          ),
        )

    );
  }
}