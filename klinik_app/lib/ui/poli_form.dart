import 'package:flutter/material.dart';

class PoliForm extends StatefulWidget {
  const PoliForm({Key? key}) : super(key: key);
  _PoliFormState createState() => _PoliFormState();
}

class _PoliFormState extends State<PoliForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            " Tambah Poli",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextField(
                  decoration: const InputDecoration(labelText: "Nama Poli")),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text("Simpan",
                      style: TextStyle(color: Colors.white)))
            ],
          ),
        ),
      ),
    );
  }
}
