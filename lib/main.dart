import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertest/detailpage.dart';
import 'package:fluttertest/refactor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HeroesApp(),
    );
  }
}

class HeroesApp extends StatefulWidget {
  const HeroesApp({super.key});

  @override
  State<HeroesApp> createState() => _HeroesAppState();
}

class _HeroesAppState extends State<HeroesApp> {
  Container container3 = Container();
  Container container2 = Container(
    child: Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Heroes',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 200,
            child: ListView.builder(
              itemBuilder: (c, i) {
                return InkWell(
                  onTap: () {
                    Navigator.of(c).push(MaterialPageRoute(
                        builder: (context) => Detailpage(
                            id: allheroes[i]["id"].toString(),
                            name: allheroes[i]["name"])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: const Color.fromARGB(255, 226, 224, 224),
                      ),
                      height: 30,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(3),
                                  bottomLeft: Radius.circular(3)),
                              color: Colors.blueGrey,
                            ),
                            width: 30,
                            child: Center(
                              child: Text(
                                allheroes[i]["id"].toString(),
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Text(
                              allheroes[i]["name"],
                              style: TextStyle(fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: allheroes.length,
              shrinkWrap: true,
            ),
          )
        ],
      ),
    ),
  );
  Container container1 = Container(
    child: Column(
      children: [
        const Text(
          'Top Of Heroes',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 15),
          child: Row(
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.black; //<-- SEE HERE
                          return null; // Defer to the widget's default.
                        },
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueGrey)),
                  onPressed: () {},
                  child: const Text(
                    'Tomba',
                    style: TextStyle(color: Colors.white),
                  )),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.black; //<-- SEE HERE
                          return null; // Defer to the widget's default.
                        },
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueGrey)),
                  onPressed: () {},
                  child: const Text(
                    'Chaoba',
                    style: TextStyle(color: Colors.white),
                  )),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.black; //<-- SEE HERE
                          return null; // Defer to the widget's default.
                        },
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueGrey)),
                  onPressed: () {},
                  child: const Text(
                    'Ibohal',
                    style: TextStyle(color: Colors.white),
                  )),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.black; //<-- SEE HERE
                          return null; // Defer to the widget's default.
                        },
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueGrey)),
                  onPressed: () {},
                  child: const Text(
                    'Sanahanbi',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Tour Of Heroes",
              style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 7, 64, 129),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.white;
                          return Colors.black;
                        }),
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered))
                              return Colors.blueGrey; //<-- SEE HERE
                            return null; // Defer to the widget's default.
                          },
                        ),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 206, 204, 204))),
                    onPressed: () {
                      log("pressed");
                      setState(() {
                        container3 = container1;
                      });
                    },
                    child: const Text(
                      'Dashboard',
                    )),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.white;
                          return Colors.black;
                        }),
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered))
                              return Colors.blueGrey; //<-- SEE HERE
                            return null; // Defer to the widget's default.
                          },
                        ),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 206, 204, 204))),
                    onPressed: () {
                      setState(() {
                        container3 = container2;
                      });
                    },
                    child: Text(
                      'Heroes',
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          container3
        ],
      ),
    );
  }
}
