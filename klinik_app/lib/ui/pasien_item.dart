import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_detail.dart';

class PasienItem extends StatelessWidget {
  final Pasien pasien;

  const PasienItem({super.key, required this.pasien});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(pasien.nama),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nomor RM: ${pasien.nomor_rm}"),
              Text("Tanggal Lahir: ${pasien.tanggal_lahir}"),
              Text("Nomor Telpon: ${pasien.nomor_telepon}"),
              Text("Alamat: ${pasien.alamat}"),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PasienDetail(pasien: pasien)),
        );
      },
    );
  }
}
