// Chapter 8 of Learning and Mastering Flutter App development
// Will Be Creating A Calculator App
// Concepts To Be Covered




import 'package:calculator_app/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
    );
  }
}

// Source Code
//  1 - Container(
//                   height: 50,
//                   decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(10),
//                      color: Colors.blueAccent,
//                    border: Border.all(
//                        color: Colors.black,
//                        width: 2,
//                     ),
//                    ),
//                    child: Center(child: Text('Login')),
//                  ),
//
//                  SizedBox(height: 20,),

//  2 - // Creating Components
// // Knowing All about Components
// //
//
// // class MyButton extends StatelessWidget {
// //
// //   final String title;
// //   const MyButton({super.key, required this.title});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(vertical: 10),
// //       child: Container(
// //         height: 50,
// //         decoration: BoxDecoration(
// //           borderRadius: BorderRadius.circular(10),
// //           color: Colors.blueAccent,
// //           border: Border.all(
// //             color: Colors.black,
// //             width: 2,
// //           ),
// //         ),
// //         child:  Center(
// //           child: Text(title ,style: TextStyle(
// //               fontSize: 20,
// //               color: Colors.white, // ✅ color inside TextStyle
// //               fontWeight: FontWeight.bold,
// //               fontStyle: FontStyle.italic,)
// //             ),
// //         ),
// //       ),
// //     );
// //   }
// // }


