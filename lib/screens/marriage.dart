import 'package:flutter/material.dart';

class Marriage extends StatefulWidget {
  const Marriage({super.key});

  @override
  State<Marriage> createState() => _MarriageState();
}

class _MarriageState extends State<Marriage> {
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
          width: 130,
          decoration: const BoxDecoration(
            color: Colors.black12,
          ),
          child: const Text(
            "Marriage",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Image.asset(
          'assets/mariage.jpg',
          fit: BoxFit.scaleDown,
        ),
      ]),
    );
  }
}
