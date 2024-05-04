import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import 'pegawai_detail.dart';

class PagePegawai extends StatefulWidget {
  const PagePegawai({super.key});

  @override
  _PagePegawaiState createState() => _PagePegawaiState();
}

class _PagePegawaiState extends State<PagePegawai> {
  final List<Pegawai> _pegawai = [
    Pegawai(
      id: 1,
      nama: 'Bayu Saputra',
      nip: '123456',
      tanggal_lahir: '2000-03-21',
      nomor_telepon: 088898760987,
      email: 'bayus@gmail.com',
      password: '1234',
    ),
    Pegawai(
      id: 2,
      nama: 'Airin Putri Baskara',
      nip: '678909',
      tanggal_lahir: '1990-03-12',
      nomor_telepon: 088654368765,
      email: 'airin20@gmail.com',
      password: '567a',
    ),
    Pegawai(
      id: 3,
      nama: 'Rina Kartika Sari',
      nip: '987654',
      tanggal_lahir: '2001-05-09',
      nomor_telepon: 088898345687,
      email: 'rinaks@gmail.com',
      password: '1267',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Data Pegawai",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue),
      body: ListView.builder(
        itemCount: _pegawai.length,
        itemBuilder: (context, Index) {
          return Card(
              child: ListTile(
            title: Text(_pegawai[Index].nama),
            subtitle: Text('nip: ${_pegawai[Index].nip}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PegawaiDetail(pegawai: _pegawai[Index]),
                ),
              );
            },
          ));
        },
      ),
    );
  }
}
