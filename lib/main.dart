import 'package:flutter/material.dart';
import 'odd_even.dart';

void main() {
  runApp(const Alish());
}

class Alish extends StatelessWidget {
  const Alish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Counter App',
      home: Wow(),
    );
  }
}

class Wow extends StatelessWidget {
  const Wow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyCounterApp(),
    );
  }
}

class MyCounterApp extends StatefulWidget {
  const MyCounterApp({Key? key}) : super(key: key);

  @override
  State<MyCounterApp> createState() => _MyCounterAppState();
}

class _MyCounterAppState extends State<MyCounterApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(
        alignment: Alignment(1, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.teal,
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              backgroundColor: Colors.teal,
              child: const Icon(
                Icons.remove,
                color: Colors.white,
              ),
              onPressed: () {
                setState(
                  () {
                    counter--;
                  },
                );
              },
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              backgroundColor: Colors.teal,
              child: const Icon(
                Icons.next_plan_outlined,
                color: Colors.white,
              ),
              onPressed: () {
               Navigator.push(context,MaterialPageRoute(builder: (context)=> OddEven()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('MyCounterApp'),
      ),
      body: Center(
        child: Text(
          counter.toString(),
          style: const TextStyle(
            fontSize: 100,
          ),
        ),
      ),
    );
  }
}
