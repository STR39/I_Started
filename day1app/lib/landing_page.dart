import 'dart:developer';

import 'package:day1app/homepage.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int colorIndex = 0;
  int zeroColorIndex = 0;
  List colors = [
    Colors.red,
    const Color.fromRGBO(4, 4, 30, 0.973),
    const Color.fromRGBO(36, 21, 103, 0.973),
    const Color.fromRGBO(98, 49, 248, 0.973),
    const Color.fromRGBO(41, 99, 179, 0.973),
  ];
  var count = 0;
  var plus = 0;
  var minus = 0;
  var zero = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          "Day1",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromRGBO(4, 4, 30, 0.973),
                  Color.fromRGBO(36, 21, 103, 0.973),
                  Color.fromRGBO(98, 49, 248, 0.973),
                  Color.fromRGBO(41, 99, 179, 0.973),
                ])),
                child: const Text(
                  "I Started My Journey Today! (21/01/2025)!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 300,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                        width: 2,
                        color: const Color.fromARGB(255, 85, 32, 134))),
                child: Image.network(
                  "https://media2.dev.to/dynamic/image/width=1600,height=900,fit=cover,gravity=auto,format=auto/https%3A%2F%2Fdev-to-uploads.s3.amazonaws.com%2Fuploads%2Farticles%2F3updex90im1j2ducczpj.png",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromRGBO(4, 4, 30, 0.973),
                  Color.fromRGBO(36, 21, 103, 0.973),
                  Color.fromRGBO(98, 49, 248, 0.973),
                  Color.fromRGBO(41, 99, 179, 0.973),
                ])),
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                padding: const EdgeInsets.all(10),
                                alignment: Alignment.center,
                                height: 100,
                                width: 190,
                                margin: const EdgeInsets.all(2),
                                child: const Text(
                                  "It's Day 2!(22/01/2025)",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            Container(
                                padding: const EdgeInsets.all(10),
                                alignment: Alignment.center,
                                height: 100,
                                width: 190,
                                margin: const EdgeInsets.all(5),
                                child: const Text(
                                  "It's Day 3!(23/01/2025)",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(25),
                            margin: const EdgeInsets.all(4),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Homepage()),
                                );
                              },
                              child: const Text("B1"),
                              style: ElevatedButton.styleFrom(
                                  side: const BorderSide(
                                    width: 2,
                                    color: Color.fromARGB(255, 29, 156, 253),
                                  ),
                                  backgroundColor:
                                      const Color.fromARGB(255, 5, 13, 103),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                            ),
                          ),
                          Container(
                              padding: const EdgeInsets.all(22),
                              margin: const EdgeInsets.all(4),
                              child: ElevatedButton(
                                onPressed: () {
                                  log("B2 Cliked!");
                                },
                                child: const Text("B2"),
                                style: ElevatedButton.styleFrom(
                                  side: const BorderSide(
                                    width: 2,
                                    color: Color.fromARGB(255, 5, 13, 103),
                                  ),
                                  backgroundColor:
                                      const Color.fromARGB(255, 29, 156, 253),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ))
                        ],
                      )),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromRGBO(4, 4, 30, 0.973),
                  Color.fromRGBO(36, 21, 103, 0.973),
                  Color.fromRGBO(98, 49, 248, 0.973),
                  Color.fromRGBO(41, 99, 179, 0.973),
                ])),
                height: 300,
                child: GridView.count(
                  padding: const EdgeInsets.all(8),
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(36, 21, 103, 0.973),
                      ),
                      child: const Text(
                        "I'm Doing Great!",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: const Color.fromRGBO(98, 49, 248, 0.973),
                      child: const Text(
                        "I'm Doing Great!",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: const Color.fromRGBO(41, 99, 179, 0.973),
                      child: const Text(
                        "I'm Doing Great!",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: const Color.fromARGB(255, 5, 13, 103),
                      child: const Text(
                        "I'm Doing Great!",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: const Color.fromARGB(255, 36, 13, 136),
                      child: const Text(
                        "I'm Doing Great!",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: const Color.fromARGB(255, 29, 156, 253),
                      child: const Text(
                        "I'm Doing Great!",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                height: 250,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromRGBO(4, 4, 30, 0.973),
                  Color.fromRGBO(36, 21, 103, 0.973),
                  Color.fromRGBO(98, 49, 248, 0.973),
                  Color.fromRGBO(41, 99, 179, 0.973),
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        "It's Day 4!(24/01/2025)",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Text.rich(
                      // ignore: prefer_interpolation_to_compose_strings
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: "Counter = ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          TextSpan(
                            text: '$count',
                            style: TextStyle(
                                color: colors[colorIndex],
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      count = count + 1;
                                      plus++;
                                      colorIndex = count % colors.length;
                                    });
                                  },
                                  child: const Icon(Icons.plus_one),
                                  style: ElevatedButton.styleFrom(
                                    side: const BorderSide(
                                      width: 2,
                                      color: Color.fromARGB(255, 36, 13, 136),
                                    ),
                                    backgroundColor:
                                        const Color.fromARGB(255, 29, 156, 253),
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "You clicked '$plus' times",
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      count = 0;
                                      zero++;
                                      colorIndex = zeroColorIndex;
                                    });
                                  },
                                  child: const Icon(Icons.exposure_zero),
                                  style: ElevatedButton.styleFrom(
                                    side: const BorderSide(
                                      width: 2,
                                      color: Color.fromARGB(255, 5, 13, 103),
                                    ),
                                    backgroundColor: const Color.fromRGBO(
                                        41, 99, 179, 0.973),
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "You clicked '$zero' times",
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if (count > 0) {
                                        count = count - 1;
                                        minus++;
                                      }
                                      minus++;
                                      colorIndex = count % colors.length;
                                    });
                                  },
                                  child: const Icon(Icons.exposure_minus_1),
                                  style: ElevatedButton.styleFrom(
                                    side: const BorderSide(
                                      width: 2,
                                      color: Color.fromRGBO(36, 21, 103, 0.973),
                                    ),
                                    backgroundColor: const Color.fromRGBO(
                                        98, 49, 248, 0.973),
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "You clicked '$minus' times",
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
