import 'package:flutter/material.dart';

class OddEven extends StatefulWidget {
  const OddEven({Key? key}) : super(key: key);

  @override
  State<OddEven> createState() => _OddEvenState();
}

class _OddEvenState extends State<OddEven> {
  String alish = '';
  TextEditingController controlleR = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
              child: const Text('Check'),
              onPressed: () {
                if (controlleR.text.isEmpty) {
                  setState(
                    () {
                      alish = '';
                    },
                  );
                } else if (double.parse(controlleR.text) % 2 == 0) {
                  setState(() {
                    alish = 'Even Number';
                  });
                } else {
                  setState(() {
                    alish = 'odd Number';
                  });
                }
              }),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    controller: controlleR,
                    keyboardType: TextInputType.number,
                  ),
                ),
                Text(
                  alish,
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
