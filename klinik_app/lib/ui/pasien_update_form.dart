import 'package:flutter/material.dart';
import 'package:klinik_app/model/pasien.dart';
import 'package:klinik_app/model/pegawai.dart';
import 'package:klinik_app/ui/pasien_detail.dart';
import '../ui/pegawai_detail.dart';

class PasienUpdateForm extends StatefulWidget {
  final Pasien pasien;

  const PasienUpdateForm({Key? key, required this.pasien}) : super(key: key);
  _PasienUpdateFormState createState() => _PasienUpdateFormState();
}

class _PasienUpdateFormState extends State<PasienUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _idCtrl = TextEditingController();
  final _nomor_rmCtrl = TextEditingController();
  final _namaCtrl = TextEditingController();
  final _tanggal_lahirCtrl = TextEditingController();
  final _nomor_teleponCtrl = TextEditingController();
  final _alamatCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _idCtrl.text = widget.pasien.id;
      _nomor_rmCtrl.text = widget.pasien.nomor_rm;
      _namaCtrl.text = widget.pasien.nama;
      _tanggal_lahirCtrl.text = widget.pasien.tanggal_lahir;
      _nomor_teleponCtrl.text = widget.pasien.nomor_telepon;
      _alamatCtrl.text = widget.pasien.alamat;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Ubah Data Pasien",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldID(),
              _fieldNomorRM(),
              _fieldNama(),
              _fieldTanggalLahir(),
              _fieldNomorTelepon(),
              _fieldAlamat(),
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

  _fieldNomorRM() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Nomor RM:"),
      controller: _nomor_rmCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Silahkan Masukkan Nomor RM';
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

  _fieldAlamat() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Alamat:"),
      controller: _alamatCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Silahkan Masukkan Alamat';
        }
        return null;
      },
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          Pasien pasien = Pasien(
            id: _idCtrl.text,
            nomor_rm: _nomor_rmCtrl.text,
            nama: _namaCtrl.text,
            tanggal_lahir: _tanggal_lahirCtrl.text,
            nomor_telepon: _nomor_teleponCtrl.text,
            alamat: _alamatCtrl.text,
          );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => PasienDetail(pasien: pasien),
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
