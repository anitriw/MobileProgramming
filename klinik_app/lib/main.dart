import 'package:flutter/material.dart';
import 'package:klinik_app/ui/pegawai_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Pegawai',
      debugShowCheckedModeBanner: false,
      home: PagePegawai(),
    );
  }
}
