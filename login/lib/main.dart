import 'package:flutter/material.dart';
import 'package:login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,

      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(140, 0, 0, 0),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromARGB(90, 255, 83, 189),
                  Color.fromARGB(90, 10, 252, 212)
                ])),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 90.0),
              child: Image.asset(
                "assets/images/img.png",
                scale: 1.1,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(top: 360),
                    child: Text(
                      "Wacth Movie in \n Virtual Reality",
                      style: TextStyle(
                        fontFamily: "OpenSans-Bold",
                        fontWeight: FontWeight.w800,
                        fontSize: 40,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Download and watch offline \n wherever you are",
                    style: TextStyle(
                      fontFamily: "OpenSans-Reguler",
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(220, 55),
                        primary: Colors.black,
                        onPrimary: Colors.white,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        textStyle: const TextStyle(
                            fontFamily: "OpenSans-Bold", fontSize: 20),
                        side: const BorderSide(color: Colors.white, width: 5),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      child: const Text("Login"))
                  // Container(

                  //   child: Material(
                  //     color: Colors.transparent,
                  //       child: InkWell(
                  //         borderRadius: BorderRadius.circular(50),
                  //     onTap: () {
                  //       print("Tapped");
                  //     },
                  //     child: Container(
                  //       width: 220,
                  //       height: 55,
                  //         decoration:
                  //       BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  //     ),
                  //   )),
                  //   decoration:
                  //       BoxDecoration(borderRadius: BorderRadius.circular(50),
                  //       color: Colors.black),
                  // )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
