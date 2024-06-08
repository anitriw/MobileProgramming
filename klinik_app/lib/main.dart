import 'package:flutter/material.dart';
import 'package:klinik_app/ui/pasien_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Pasien',
      debugShowCheckedModeBanner: false,
      home: PagePasien(),
    );
  }
}
