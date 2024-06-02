import 'package:flutter/material.dart';

class PasienForm extends StatefulWidget {
  const PasienForm({Key? key}) : super(key: key);
  _PasienFormState createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            " Tambah Data Pasien",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextField(decoration: const InputDecoration(labelText: "ID")),
              TextField(
                  decoration: const InputDecoration(labelText: "Nomor RM")),
              TextField(decoration: const InputDecoration(labelText: "Nama")),
              TextField(
                  decoration:
                      const InputDecoration(labelText: "Tanggal Lahir")),
              TextField(
                  decoration:
                      const InputDecoration(labelText: "Nomor Telepon")),
              TextField(decoration: const InputDecoration(labelText: "Alamat")),
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
