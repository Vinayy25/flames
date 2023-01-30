import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FindBetter extends StatefulWidget {
  const FindBetter({super.key});

  @override
  State<FindBetter> createState() => _FindBetterState();
}

class _FindBetterState extends State<FindBetter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "find someone better",
        ),
      ],
    ));
  }
}
