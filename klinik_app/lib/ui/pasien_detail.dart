import 'package:flutter/material.dart';
import 'package:klinik_app/ui/pasien_update_form.dart';
import '../model/pasien.dart';

class PasienDetail extends StatelessWidget {
  final Pasien pasien;

  const PasienDetail({super.key, required this.pasien});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Detail Pasien",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Id             : ${pasien.id}'),
            SizedBox(height: 8.0),
            Text('No.RM          : ${pasien.nomor_rm}'),
            SizedBox(height: 8.0),
            Text('Nama           : ${pasien.nama}'),
            SizedBox(height: 8.0),
            Text('Tanggal Lahir  : ${pasien.tanggal_lahir.toString()}'),
            SizedBox(height: 8.0),
            Text('Nomor Telepon  : ${pasien.nomor_telepon}'),
            SizedBox(height: 8.0),
            Text('Alamat          : ${pasien.alamat}'),
            SizedBox(height: 8.0),
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
            builder: (context) => PasienUpdateForm(pasien: pasien),
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
              title: Text("Hapus Pasien"),
              content: Text("Apakah Anda yakin ingin menghapus pasien ini?"),
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
