import 'dart:math';

import 'package:flip_panel/flip_panel.dart';
import 'package:flutter/material.dart';

import 'main.dart';
import 'second_page.dart';

class ThirdPage extends StatelessWidget {
  final Widget child;
  final digits = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

  ThirdPage({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Matrix 3D'), // changed
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                );
              },
              child: const Text('Go to First Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondPage()),
                );
              },
              child: const Text('Go to Second Page'),
            ),
            FlipPanel.builder(
              itemBuilder: (context, index) => Container(
                color: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: Text(
                  '${digits[index]}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                      color: Colors.white),
                ),
              ),
              itemsCount: digits.length,
              period: const Duration(milliseconds: 1000),
              loop: 1,
            ),

            //======PRACTICE CODE=======
            // SizedBox(
            //   width: 50,
            //   child: Column(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Transform(
            //         transform: Matrix4.identity()
            //           ..setEntry(3, 2, 0.006)
            //           ..rotateX(pi / 4),
            //         alignment: Alignment.bottomCenter,
            //         child: ClipRect(
            //           child: Align(
            //             alignment: Alignment.topCenter,
            //             heightFactor: 0.5,
            //             child: child,
            //           ),
            //         ),
            //       ),
            //       const Padding(
            //         padding: EdgeInsets.only(top: 2.0),
            //       ),
            //       ClipRect(
            //         child: Align(
            //           alignment: Alignment.bottomCenter,
            //           heightFactor: 0.5,
            //           child: child,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            //======PRACTICE CODE=======
          ],
        ),
      ),
    );
  }
}
