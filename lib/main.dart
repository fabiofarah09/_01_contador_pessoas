import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void decrement() {
    print('decrement');
  }

  void increment() {
    print('increment');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 107, 107, 107),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'texto',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '0',
              style: TextStyle(
                fontSize: 64,
                color: Colors.blue,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement,
                style: controlButtonStyle(),
                child: Text(
                  'saiu',
                  style: buttonTextStyle(),
                ),
              ),
              const SizedBox(width: 20),
              TextButton(
                onPressed: increment,
                style: controlButtonStyle(),
                child: Text(
                  'entrou',
                  style: buttonTextStyle(),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

controlButtonStyle() {
  return TextButton.styleFrom(
    backgroundColor: Colors.white,
    fixedSize: const Size(100, 100),
    // primary: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );
}

buttonTextStyle() {
  return const TextStyle(
    fontSize: 20,
    color: Colors.blue,
    fontWeight: FontWeight.w400,
  );
}
