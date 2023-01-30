import 'package:flutter/material.dart';

class Enemies extends StatefulWidget {
  const Enemies({super.key});

  @override
  State<Enemies> createState() => _EnemiesState();
}

class _EnemiesState extends State<Enemies> {
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
            "Enemies",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Image.asset(
          'assets/enemies.jpg',
          fit: BoxFit.scaleDown,
        ),
      ]),
    );
  }
}
