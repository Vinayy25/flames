import 'package:flutter/material.dart';

class Siblings extends StatefulWidget {
  const Siblings({super.key});

  @override
  State<Siblings> createState() => _SiblingsState();
}

class _SiblingsState extends State<Siblings> {
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
            "Siblings",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Image.asset(
          'assets/siblings.jpg',
          fit: BoxFit.scaleDown,
        ),
      ]),
    );
  }
}
