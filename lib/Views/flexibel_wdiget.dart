import 'package:flutter/material.dart';

class FlexibelTuorial extends StatelessWidget {
  const FlexibelTuorial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexibel Widget"),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
              child: Container(
            color: Colors.pinkAccent,
          )),
          Flexible(
            flex: 2,
              child: Container(
            color: Colors.pinkAccent,
          )),
          Flexible(
            flex: 2,
              child: Container(
            color: Colors.pinkAccent,
          ))
        ],
      ),
    );
  }
}
