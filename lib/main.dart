import 'package:flutter/material.dart';
import "dart:math";
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}): super(key:key);

  // this widget is the root of the application
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Flutter demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({Key? key}): super(key:key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _Principle= TextEditingController();
  var _Interest = TextEditingController();
  var _Tenur = TextEditingController();
  String _Result= "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 240,
                    decoration: const BoxDecoration(
                        color: Color(0xff368983),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )
                    ),
                    child: Stack(children: [
                      Positioned(
                          top: 10,
                          left: 350,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: Container(
                              height: 50,
                              width: 50,
                              color: const Color.fromRGBO(250, 250, 250, 0.1),
                              child: const Text(
                                '🌕',
                                style: TextStyle(
                                  fontSize: 42,
                                ),
                              ),
                            ),
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 35, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Calculate',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Text('EMI',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 36,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      )
                    ],),
                  ),
                ],
              ),
              Positioned(
                  top: 480,
                  left: 40,
                  child: Container(
                    height: 360,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(44, 130, 110,60),
                    ),

                  )
              ),
              Positioned(
                top: 160,
                left: 40,
                child: Container(
                  height: 200,
                  width: 320,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 47, 125, 121),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Principle Amount',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),

                      SizedBox(height: 55),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 13,
                                  backgroundColor: Color.fromARGB(255, 85, 145, 141),
                                  child: Icon(
                                    Icons.percent_rounded,
                                    color: Colors.white,
                                    size: 19,
                                  ),
                                ),
                                SizedBox(width: 7),
                                Text(
                                  'Interest Rate',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 216, 216, 216),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 13,
                                  backgroundColor: Color.fromARGB(255, 85, 145, 141),
                                  child: Icon(
                                    Icons.timer,
                                    color: Colors.white,
                                    size: 19,
                                  ),
                                ),
                                SizedBox(width: 7),
                                Text(
                                  'Loan Tenur',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 216, 216, 216),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),

                    ],
                  ),
                ),
              ),
              Positioned(
                top: 380,
                left: 30,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          var a = _Principle.text;
                          print("apple,$a");
                        },
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: const Color(0xff368983),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(child: Text('Clear',style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:InkWell(
                        onTap: (){

                          double A = 0.0;
                          int P = int.parse(_Principle.text);
                          double r = int.parse(_Interest.text) / 12 / 100;
                          int n = int.parse(_Tenur.text);

                          A = (P * r * pow((1+r), n) / ( pow((1+r),n) -1));
                          _Result = A.toStringAsFixed(2);

                          setState(() {

                          });


                          print("apple,$A");
                        },
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: const Color(0xff368983),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(child: Text('Calculate',style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                  top: 530,
                  left: 100,
                  child: SizedBox(
                    height: 100,
                    width: 320,
                    child: Text('Your EMI Amount is:',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          color: Colors.white,)
                    ),

                  )),
              Positioned(
                  top: 630,
                  left: 150,
                  child: Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff368983),
                    ),
                    child:  Center(

                      child: Text('RS: $_Result',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.white,)
                      ),
                    ),

                  )),

              Positioned(
                  top: 210,
                  left: 60,
                  child: Container(
                    height: 20,
                    width: 100,
                    child: TextField(
                      controller: _Principle,
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        hintText: 'Enter amount',
                        hintStyle: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.normal,fontSize: 16),
                        border: InputBorder.none,
                      ),
                    ),

                  )

              ),
              Positioned(
                  top: 290,
                  left: 93,
                  child: Container(
                    height: 20,
                    width: 100,
                    child: TextField(
                      controller: _Interest,
                      style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Enter Rate',
                        hintStyle: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.normal,fontSize: 16),
                        border: InputBorder.none,
                      ),
                    ),

                  )

              ),
              Positioned(
                  top: 290,
                  left: 260,
                  child: Container(
                    height: 20,
                    width: 100,
                    child: TextField(
                      controller: _Tenur,
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        hintText: 'Enter Time',
                        hintStyle: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.normal,fontSize: 16),
                        border: InputBorder.none,
                      ),
                    ),
                  )
              )
            ],
          ),
        )
    );
  }
}