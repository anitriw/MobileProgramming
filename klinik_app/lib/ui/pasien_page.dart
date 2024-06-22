import 'package:flutter/material.dart';
import 'package:klinik_app/model/pasien.dart';
import 'package:klinik_app/ui/pasien_form.dart';
import 'pasien_detail.dart';

class PagePasien extends StatefulWidget {
  const PagePasien({super.key});

  @override
  _PagePasienState createState() => _PagePasienState();
}

class _PagePasienState extends State<PagePasien> {
  final List<Pasien> _pasien = [
    Pasien(
      id: "1",
      nomor_rm: "11",
      nama: 'Prima Jaya Saputra',
      tanggal_lahir: '2000-05-29',
      nomor_telepon: "088898769876",
      alamat: 'Sleman',
    ),
    Pasien(
      id: "2",
      nomor_rm: "12",
      nama: 'Amalia Cahyaningrum',
      tanggal_lahir: '2003-05-23',
      nomor_telepon: "088898765432",
      alamat: 'Gunung Kidul',
    ),
    Pasien(
      id: "3",
      nomor_rm: "13",
      nama: 'Wahyu Kencono Wungu',
      tanggal_lahir: '2001-06-29',
      nomor_telepon: "088854670987",
      alamat: 'Sleman',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Data Pasien",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          GestureDetector(
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => PasienForm())));
            },
          )
        ],
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: _pasien.length,
        itemBuilder: (context, Index) {
          return Card(
              child: ListTile(
            title: Text(_pasien[Index].nama),
            subtitle: Text('No.RM : ${_pasien[Index].nomor_rm}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PasienDetail(pasien: _pasien[Index]),
                ),
              );
            },
          ));
        },
      ),
    );
  }
}
