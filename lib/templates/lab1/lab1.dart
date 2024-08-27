import 'package:flutter/material.dart';

void main() => runApp(const Lab1());

class Lab1 extends StatelessWidget {
  const Lab1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LAb1HomePage(),
    );
  }
}

class LAb1HomePage extends StatelessWidget {
  const LAb1HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Lab 1'),
      ),
      body: myWidget(),
    );
  }

  Widget myWidget() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          exercise1(),
          const SizedBox(
            height: 25,
          ),
          exercise2(),
          const SizedBox(
            height: 25,
          ),
          exercise3(),
          const SizedBox(
            height: 25,
          ),
          exercise4(),
          const SizedBox(
            height: 25,
          ),
          exercise5(),
        ],
      ),
    );
  }

  Widget exercise1() {
    return const Text(
      "Hello, Flutter!",
      style: TextStyle(
          fontSize: 35, color: Colors.pink, fontWeight: FontWeight.bold),
    );
  }

  Widget exercise2() {
    return const Icon(
      Icons.audiotrack,
      size: 100,
      color: Color.fromARGB(255, 4, 12, 239),
    );
  }

  Widget exercise3() {
    return const Image(
      width: 100,
      height: 100,
      image: NetworkImage(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
      fit: BoxFit.cover,
    );
  }

  printPressed() {
    print("Pressed");
  }

  Widget exercise4() {
    return TextButton(
      onPressed: printPressed,
      child: const Text('Click here!'),
    );
  }

  Widget exercise5() {
    return Column(
      children: [
        Container(
          color: Colors.pinkAccent,
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.only(left: 10.0),
          child: const Text(
            'Have a nice day!',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          color: Colors.black,
          padding: const EdgeInsets.all(15.0),
          margin: const EdgeInsets.only(top: 10.0),
          child: const Icon(
            Icons.favorite,
            size: 35,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
