import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import 'pegawai_detail.dart';

class PegawaiItem extends StatelessWidget {
  final Pegawai pegawai;

  const PegawaiItem({super.key, required this.pegawai});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(pegawai.nama),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nomor RM: ${pegawai.nip}"),
              Text("Tanggal Lahir: ${pegawai.tanggal_lahir}"),
              Text("Nomor Telpon: ${pegawai.nomor_telepon}"),
              Text("Alamat: ${pegawai.email}"),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PegawaiDetail(pegawai: pegawai)),
        );
      },
    );
  }
}
