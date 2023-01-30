import 'package:flutter/material.dart';

class Lovers extends StatefulWidget {
  const Lovers({super.key});

  @override
  State<Lovers> createState() => _LoversState();
}

class _LoversState extends State<Lovers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const SizedBox(
          height: 50,
        ),
        Container(
          alignment: Alignment.center,
          height: 50,
          width: 130,
          decoration: const BoxDecoration(
            color: Colors.white10,
          ),
          child: const Text(
            "Lovers",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Image.asset(
          'assets/lover.jpg',
          fit: BoxFit.scaleDown,
        ),
      ]),
    );
  }
}
