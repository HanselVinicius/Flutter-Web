import 'package:flutter/material.dart';
import 'dart:html' as html;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xff213A50), Color(0xff071930)],
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            CircleAvatar(
              radius: 100,
              backgroundColor: const Color(0xff071930),
              child: Image.asset('icons-me.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Vinicius Hansel",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Desenvolvedor Flutter, Android Nativo e React Native',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '#Flutter ❤ #Mobile ❤',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w200),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Contatos!',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    htmlOpenGithub();
                  },
                  child: Image.asset(
                    'icons-github.png',
                    height: 50,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    htmlOpenLinkedin();
                  },
                  child: Image.asset(
                    'icons-linkedin.png',
                    height: 50,
                    color: Colors.white,
                  ),
                ),

                SizedBox(
                  height: 20,
                ),


              ],
            ),
            GestureDetector(
              onTap: () {
                htmlDownloadResume();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24, vertical: 12),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffA2834D),
                      Color(0xffBC9A5F),
                    ],
                  ),
                ),
                child: const Text(
                   "Meu Curriculum!",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void htmlOpenGithub() {
  String url = "https://github.com/HanselVinicius";
  html.window.open(url, 'github');
}

void htmlOpenLinkedin() {
  String url =
      "https://www.linkedin.com/in/vinicius-hansel-figueiredo-da-costa-b90b1b220/";
  html.window.open(url, 'linkedin');
}

void htmlDownloadResume() {
  String url = "https://drive.google.com/file/d/1q1GdpoVcelxWJMVvIjWG_v7K3as77RJQ/view?usp=sharing";
  html.window.open(url, 'curriculo');
}
