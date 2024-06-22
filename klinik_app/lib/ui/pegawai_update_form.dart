import 'package:flutter/material.dart';
import 'package:klinik_app/model/pegawai.dart';
import '../ui/pegawai_detail.dart';

class PegawaiUpdateForm extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiUpdateForm({Key? key, required this.pegawai}) : super(key: key);
  _PegawaiUpdateFormState createState() => _PegawaiUpdateFormState();
}

class _PegawaiUpdateFormState extends State<PegawaiUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _idCtrl = TextEditingController();
  final _nipCtrl = TextEditingController();
  final _namaCtrl = TextEditingController();
  final _tanggal_lahirCtrl = TextEditingController();
  final _nomor_teleponCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  @override
  void initState() {
    super.initState();
    setState(() {
      _idCtrl.text = widget.pegawai.id;
      _nipCtrl.text = widget.pegawai.nip;
      _namaCtrl.text = widget.pegawai.nama;
      _tanggal_lahirCtrl.text = widget.pegawai.tanggal_lahir;
      _nomor_teleponCtrl.text = widget.pegawai.nomor_telepon;
      _emailCtrl.text = widget.pegawai.email;
      _passwordCtrl.text = widget.pegawai.password;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ubah Data Pegawai",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldID(),
              _fieldNIP(),
              _fieldNama(),
              _fieldTanggalLahir(),
              _fieldNomorTelepon(),
              _fieldEmail(),
              _fieldPassword(),
              SizedBox(height: 20),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  _fieldID() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "ID:"),
      controller: _idCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Silahkan Masukkan ID';
        }
        return null;
      },
    );
  }

  _fieldNIP() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "NIP:"),
      controller: _nipCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Silahkan Masukkan NIP';
        }
        return null;
      },
    );
  }

  _fieldNama() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Nama:"),
      controller: _namaCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'PSilahkan Masukkan Nama';
        }
        return null;
      },
    );
  }

  _fieldTanggalLahir() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Tanggal Lahir:"),
      controller: _tanggal_lahirCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Silahkan Masukkan Tanggal Lahir';
        }
        return null;
      },
    );
  }

  _fieldNomorTelepon() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Nomor Telepon:"),
      controller: _nomor_teleponCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Silahkan Masukkan Nomor Telepon';
        }
        return null;
      },
    );
  }

  _fieldEmail() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Email:"),
      controller: _emailCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Silahkan Masukkan Email';
        }
        return null;
      },
    );
  }

  _fieldPassword() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Password:"),
      controller: _passwordCtrl,
      obscureText: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Silahkan Masukkan Password';
        }
        return null;
      },
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          Pegawai pegawai = Pegawai(
            id: _idCtrl.text,
            nip: _nipCtrl.text,
            nama: _namaCtrl.text,
            tanggal_lahir: _tanggal_lahirCtrl.text,
            nomor_telepon: _nomor_teleponCtrl.text,
            email: _emailCtrl.text,
            password: _passwordCtrl.text,
          );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => PegawaiDetail(pegawai: pegawai),
            ),
          );
        }
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      child:
          const Text("Simpan Perubahan", style: TextStyle(color: Colors.white)),
    );
  }
}
