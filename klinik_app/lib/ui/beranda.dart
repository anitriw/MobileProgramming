import 'package:flutter/material.dart';
import 'package:klinik_app/widget/sidebar.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: Text(
          "Beranda",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        // Set the color of the drawer icon to white
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Text("Selamat Datang"),
      ),
    );
  }
}
