import 'package:flutter/material.dart';

class main_page extends StatefulWidget {
  const main_page({Key? key}) : super(key: key);

  @override
  State<main_page> createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {

  var userInput = '';
  var operator = '';
  var text = '0';

  insertNumber(value){
    setState(() {
      if (text == '0'){
        text = value.toString();
      } else {
        text += value.toString();
      }
    });
  }

  calculate(){
    var data = text.split(operator);

    var num1 = data[0];
    var num2 = data[1];

    setState(() {
      switch(operator){
        case '/':
          text = (int.parse(num1) ~/ int.parse(num2)).toString();
          break;
        case '*':
          text = (int.parse(num1) * int.parse(num2)).toString();
          break;
        case '-':
          text = (int.parse(num1) - int.parse(num2)).toString();
          break;
        case '+':
          text = (int.parse(num1) + int.parse(num2)).toString();
          break;
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Calculator")
      ),
      body: Container(
        color: Color(0xFF28527a),
        child: Column(
          children: [
            Container(
              color: Color(0xFF8ac4d0),
              width: size.width,
              height: size.height / 2.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  Text(text,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 55
                    ),
                  ),
                ],
              ),
            ),

            Divider(color: Color(0xFF28527a), height: 5),

            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.yellow,
                          height: 100,
                          child: MaterialButton(
                            child: const Text("7",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 35
                              ),
                            ),
                            onPressed: () {
                              insertNumber(7);
                            }

                          ),
                        ),
                      ),
                      VerticalDivider(color: Color(0xFF28527a), width: 5),

                      Expanded(
                        child: Container(
                          color: Colors.yellow,
                          height: 100,
                          child: MaterialButton(
                              child: const Text("8",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 35
                                ),
                              ),
                              onPressed: () {
                                insertNumber(8);
                              }

                          ),
                        ),
                      ),
                      VerticalDivider(color: Color(0xFF28527a), width: 5),

                      Expanded(
                        child: Container(
                          color: Colors.yellow,
                          height: 100,
                          child: MaterialButton(
                              child: const Text("9",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 35
                                ),
                              ),
                              onPressed: () {
                                insertNumber(9);
                              }

                          ),
                        ),
                      ),
                      VerticalDivider(color: Color(0xFF28527a), width: 5),

                      Expanded(
                        child: Container(
                          color: Colors.orange,
                          height: 100,
                          child: MaterialButton(
                              child: const Text("/",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35
                                ),
                              ),
                              onPressed: () {
                                insertNumber('/');
                                operator = '/';
                              }
                          ),
                        ),
                      ),

                    ],

                  ),


            Divider(color: Color(0xFF28527a), height: 5),

            Container(
                child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.yellow,
                              height: 100,
                              child: MaterialButton(
                                  child: const Text("4",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 35
                                    ),
                                  ),
                                  onPressed: () {
                                    insertNumber(4);
                                  }

                              ),
                            ),
                          ),
                          VerticalDivider(color: Color(0xFF28527a), width: 5),

                          Expanded(
                            child: Container(
                              color: Colors.yellow,
                              height: 100,
                              child: MaterialButton(
                                  child: const Text("5",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 35
                                    ),
                                  ),
                                  onPressed: () {
                                    insertNumber(5);
                                  }

                              ),
                            ),
                          ),
                          VerticalDivider(color: Color(0xFF28527a), width: 5),

                          Expanded(
                            child: Container(
                              color: Colors.yellow,
                              height: 100,
                              child: MaterialButton(
                                  child: const Text("6",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 35
                                    ),
                                  ),
                                  onPressed: () {
                                    insertNumber(6);
                                  }

                              ),
                            ),
                          ),
                          VerticalDivider(color: Color(0xFF28527a), width: 5),

                          Expanded(
                            child: Container(
                              color: Colors.orange,
                              height: 100,
                              child: MaterialButton(
                                  child: const Text("*",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 35
                                    ),
                                  ),
                                  onPressed: () {
                                    insertNumber('*');
                                    operator = '*';
                                  }
                              ),
                            ),
                          ),

                        ],

                      ),

                    ]
                ),
            ),


            Divider(color: Color(0xFF28527a), height: 5),

            Container(
                child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.yellow,
                              height: 100,
                              child: MaterialButton(
                                  child: const Text("1",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 35
                                    ),
                                  ),
                                  onPressed: () {
                                    insertNumber(1);
                                  }

                              ),
                            ),
                          ),
                          VerticalDivider(color: Color(0xFF28527a), width: 5),

                          Expanded(
                            child: Container(
                              color: Colors.yellow,
                              height: 100,
                              child: MaterialButton(
                                  child: const Text("2",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 35
                                    ),
                                  ),
                                  onPressed: () {
                                    insertNumber(2);
                                  }
                              ),
                            ),
                          ),
                          VerticalDivider(color: Color(0xFF28527a), width: 5),

                          Expanded(
                            child: Container(
                              color: Colors.yellow,
                              height: 100,
                              child: MaterialButton(
                                  child: const Text("3",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 35
                                    ),
                                  ),
                                  onPressed: () {
                                    insertNumber(3);
                                  }

                              ),
                            ),
                          ),
                          VerticalDivider(color: Color(0xFF28527a), width: 5),

                          Expanded(
                            child: Container(
                              color: Colors.orange,
                              height: 100,
                              child: MaterialButton(
                                  child: const Text("-",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 35
                                    ),
                                  ),
                                  onPressed: () {
                                    insertNumber('-');
                                    operator = '-';
                                  }
                              ),
                            ),
                          ),

                        ],

                      ),

                    ]
                ),
            ),


            Divider(color: Color(0xFF28527a), height: 5),

            Container(
                child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.orange,
                              height: 100,
                              child: MaterialButton(
                                  child: const Text("C",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 35
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      text = '0';
                                    });
                                  }

                              ),
                            ),
                          ),
                          VerticalDivider(color: Color(0xFF28527a), width: 5),

                          Expanded(
                            child: Container(
                              color: Colors.yellow,
                              height: 100,
                              child: MaterialButton(
                                  child: const Text("0",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 35
                                    ),
                                  ),
                                  onPressed: () {
                                    insertNumber(0);
                                  }

                              ),
                            ),
                          ),
                          VerticalDivider(color: Color(0xFF28527a), width: 5),

                          Expanded(
                            child: Container(
                              color: Colors.orange,
                              height: 100,
                              child: MaterialButton(
                                  child: const Text("+",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 35
                                    ),
                                  ),
                                  onPressed: () {
                                    insertNumber('+');
                                    operator = '+';
                                  }

                              ),
                            ),
                          ),
                          VerticalDivider(color: Color(0xFF28527a), width: 5),

                          Expanded(
                            child: Container(
                              color: Colors.orange,
                              height: 100,
                              child: MaterialButton(
                                  child: const Text("=",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 35
                                    ),
                                  ),
                                  onPressed: () {
                                    calculate();
                                  }
                              ),
                            ),
                          ),

                          ],
                        ),
                      ],
                    ),
                  ),

                ]
              ),
            ),
          ]
        ),
      ),
    );
  }
}
