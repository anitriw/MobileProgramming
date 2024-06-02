import 'package:flutter/material.dart';

class BarisKolomWidget extends StatelessWidget {
  const BarisKolomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Baris dan Kolom"), backgroundColor: Colors.blue),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Baris 1, Kolom 1"),
              Text("Baris 2, Kolom 1"),
              Text("Baris 3, Kolom 1"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Baris 1, Kolom 2"),
              Text("Baris 2, Kolom 2"),
              Text("Baris 3, Kolom 2"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Baris 1, Kolom 3"),
              Text("Baris 2, Kolom 3"),
              Text("Baris 3, Kolom 3"),
            ],
          ),
        ],
      ),
    );
  }
}
