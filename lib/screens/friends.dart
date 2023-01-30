import 'package:flutter/material.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            height: 45,
            width: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black12,
            ),
            child: const Text(
              "Friends",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
          ),
          Image.asset(
            'assets/friends1.jpg',
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}
