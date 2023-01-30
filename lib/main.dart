import 'package:flames/logic.dart';
import 'package:flames/screens/affair.dart';
import 'package:flames/screens/enemies.dart';
import 'package:flames/screens/findbetter.dart';
import 'package:flames/screens/friends.dart';
import 'package:flames/screens/lovers.dart';
import 'package:flames/screens/marriage.dart';
import 'package:flames/screens/siblings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flames',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      routes: {
        '/friends/': (context) => const Friends(),
        '/lovers/': (context) => const Lovers(),
        '/affair/': (context) => const Affair(),
        '/marriage/': (context) => const Marriage(),
        '/enemies/': (context) => const Enemies(),
        '/siblings/': (context) => const Siblings(),
        '/findbetter/': (context) => const FindBetter(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _boysNameController = TextEditingController();
  final _girlsNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/wszw.jpg',
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            right: 58,
            left: 58,
            top: 100,
            bottom: 100,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
              color: Colors.redAccent,
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(children: [
                // ignore: prefer_const_constructors
                Expanded(
                  flex: 4,
                  child: TextField(
                    style: TextStyle(
                      height: 2,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    controller: _girlsNameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter girl's name",
                      fillColor: Colors.white70,
                      filled: true,
                      isDense: true,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // ignore: prefer_const_constructors
                Expanded(
                  flex: 5,
                  child: TextField(
                    controller: _boysNameController,
                    style: TextStyle(
                      height: 2,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter boy's name",
                      fillColor: Colors.white70,
                      filled: true,
                      isDense: true,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: InkWell(
                    onTap: () {
                      String res = checkFlames(
                          _boysNameController.text, _girlsNameController.text);
                      if (res == 'Friends') {
                        Navigator.pushNamed(context, '/friends/');
                      } else if (res == 'Lovers') {
                        Navigator.pushNamed(context, '/lovers/');
                      } else if (res == 'Affair') {
                        Navigator.pushNamed(context, '/affair/');
                      } else if (res == 'Marriage') {
                        Navigator.pushNamed(context, '/marriage/');
                      } else if (res == 'Enemies') {
                        Navigator.pushNamed(context, '/enemies/');
                      } else if (res == 'Siblings') {
                        Navigator.pushNamed(context, '/siblings/');
                      } else if (res == 'Invalid') {
                        Navigator.pushNamed(context, '/findbetter/');
                      }
                    },
                    child: Container(
                      width: 120.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: const Center(
                        child: Text(
                          'Generate',
                          style:
                              TextStyle(fontSize: 15.0, color: Colors.black87),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
