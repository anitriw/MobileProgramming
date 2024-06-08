import 'package:flutter/material.dart';
import 'package:klinik_app/ui/pegawai_update_form.dart';
import '../model/pegawai.dart';

class PegawaiDetail extends StatelessWidget {
  final Pegawai pegawai;

  const PegawaiDetail({super.key, required this.pegawai});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Pegawai",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('NIP           : ${pegawai.nip}'),
            SizedBox(height: 8.0),
            Text('Nama          : ${pegawai.nama}'),
            SizedBox(height: 8.0),
            Text(
                'Tanggal Lahir : ${(pegawai.tanggal_lahir)}'), // Format the date
            SizedBox(height: 8.0),
            Text('Nomor Telepon : ${pegawai.nomor_telepon}'),
            SizedBox(height: 8.0),
            Text('Email         : ${pegawai.email}'),
            SizedBox(height: 8.0),
            Text('Password      : ${pegawai.password}'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _tombolUbah(context),
                _tombolHapus(context),
              ],
            )
          ],
        ),
      ),
    );
  }

  _tombolUbah(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PegawaiUpdateForm(pegawai: pegawai),
          ),
        );
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      child: const Text("Ubah", style: TextStyle(color: Colors.white)),
    );
  }

  _tombolHapus(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Implement your delete functionality here
        // For example, show a confirmation dialog
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Hapus Pegawai"),
              content: Text("Apakah Anda yakin ingin menghapus pegawai ini?"),
              actions: [
                TextButton(
                  onPressed: () {
                    // If user cancels, just pop the dialog
                    Navigator.of(context).pop();
                  },
                  child: Text("Batal"),
                ),
                TextButton(
                  onPressed: () {
                    // If user confirms, perform the delete action
                    // For example, you can call a method to delete the pegawai
                    // Then navigate back to the previous screen
                    Navigator.of(context).pop();
                    Navigator.of(context)
                        .pop(); // Navigate back to the previous screen
                  },
                  child: Text("Hapus"),
                ),
              ],
            );
          },
        );
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      child: const Text("Hapus", style: TextStyle(color: Colors.white)),
    );
  }
}
