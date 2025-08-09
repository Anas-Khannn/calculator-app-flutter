import 'package:flutter/material.dart';
import 'package:calculator_app/components/my_button.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Calculator App'),
        leading: const Icon(Icons.menu),
        elevation: 0,
        toolbarHeight: 70,
        centerTitle: true,
        backgroundColor: Colors.amber,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        userInput,
                        style: const TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      Text(
                        answer,
                        style: const TextStyle(fontSize: 30, color: Colors.green), // ✅ Green color for result
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(title: 'AC', onPress: () {
                          setState(() {
                            userInput = '';
                            answer = '';
                          });
                        }),
                        MyButton(title: '+/-', onPress: () {
                          // Placeholder: +/- functionality not implemented yet
                        }),
                        MyButton(title: '%', onPress: () {
                          setState(() {
                            userInput += '%';
                          });
                        }),
                        MyButton(title: '/', color: const Color(0xffffa00a), onPress: () {
                          setState(() {
                            userInput += '/';
                          });
                        }),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '7', onPress: () {
                          setState(() {
                            userInput += '7';
                          });
                        }),
                        MyButton(title: '8', onPress: () {
                          setState(() {
                            userInput += '8';
                          });
                        }),
                        MyButton(title: '9', onPress: () { // ✅ fixed wrong "0" here
                          setState(() {
                            userInput += '9';
                          });
                        }),
                        MyButton(title: 'x', color: const Color(0xffffa00a), onPress: () {
                          setState(() {
                            userInput += '*'; // ✅ store as "*" so parser works
                          });
                        }),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '4', onPress: () {
                          setState(() {
                            userInput += '4';
                          });
                        }),
                        MyButton(title: '5', onPress: () {
                          setState(() {
                            userInput += '5';
                          });
                        }),
                        MyButton(title: '6', onPress: () {
                          setState(() {
                            userInput += '6';
                          });
                        }),
                        MyButton(title: '-', color: const Color(0xffffa00a), onPress: () {
                          setState(() {
                            userInput += '-';
                          });
                        }),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '1', onPress: () {
                          setState(() {
                            userInput += '1';
                          });
                        }),
                        MyButton(title: '2', onPress: () {
                          setState(() {
                            userInput += '2';
                          });
                        }),
                        MyButton(title: '3', onPress: () {
                          setState(() {
                            userInput += '3';
                          });
                        }),
                        MyButton(title: '+', color: const Color(0xffffa00a), onPress: () {
                          setState(() {
                            userInput += '+';
                          });
                        }),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '0', onPress: () {
                          setState(() {
                            userInput += '0';
                          });
                        }),
                        MyButton(title: '.', onPress: () {
                          setState(() {
                            userInput += '.';
                          });
                        }),
                        MyButton(title: 'DEL', onPress: () {
                          setState(() {
                            if (userInput.isNotEmpty) { // ✅ prevent crash
                              userInput = userInput.substring(0, userInput.length - 1);
                            }
                          });
                        }),
                        MyButton(title: '=', color: const Color(0xffffa00a), onPress: () {
                          equalPress();
                        }),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  void equalPress() {
    try {
      Parser p = Parser();
      Expression expression = p.parse(userInput); // ✅ already contains "*" not "x"
      ContextModel contextModel = ContextModel();
      double eval = expression.evaluate(EvaluationType.REAL, contextModel);

      setState(() {
        answer = eval.toString();
      });
    } catch (e) {
      setState(() {
        answer = "Error";
      });
    }
  }
}































// Source Code

// 1- Text(
//                 'Anas Khan',
//                 style: TextStyle(
//                   fontSize: 30,
//                   color: Colors.black, // ✅ color inside TextStyle
//                   fontWeight: FontWeight.bold,
//                   fontStyle: FontStyle.italic,
//
//
//                 ),
//               ),
