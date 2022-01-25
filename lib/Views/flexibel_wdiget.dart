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
          Container(
            child: Flexible(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(5),
                  color: Colors.pinkAccent,
                )
            )
          ),
          Flexible(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(5),
                color: Colors.yellowAccent,
              )),
          Flexible(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(5),
                color: Colors.green,
              )),
          Flexible(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(5),
                color: Colors.lightBlue,
              ))
        ],
      ),
    );
  }
}
