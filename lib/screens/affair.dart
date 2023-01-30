import 'package:flutter/material.dart';

class Affair extends StatefulWidget {
  const Affair({super.key});

  @override
  State<Affair> createState() => _AffairState();
}

class _AffairState extends State<Affair> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const SizedBox(
          height: 50,
        ),
        Container(
          alignment: Alignment.center,
          height: 50,
          width: 100,
          decoration: const BoxDecoration(
            color: Colors.black12,
          ),
          child: const Text(
            "Affair",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Image.asset(
          'assets/affair2.jpg',
          fit: BoxFit.scaleDown,
        ),
      ]),
    );
  }
}
