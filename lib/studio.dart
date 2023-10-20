import 'package:flutter/material.dart';

class DataStudio {
  final String jenis;
  final String harga;
  final String foto;
  final String deskripsi;

  const DataStudio({
    required this.jenis,
    required this.harga,
    required this.foto,
    required this.deskripsi,
  });
}

class StudioPage extends StatelessWidget {
  StudioPage({Key? key});

  final List<int> numberList = List<int>.generate(5, (int index) => index);

  @override
  Widget build(BuildContext context) {
    List<DataStudio> dataIndex = [
      const DataStudio(
        jenis: 'Studio 1',
        harga: 'Rp.60.000/jam',
        foto: 'images/studio1.jpg',
        deskripsi:
            'Studio 1 yang dilengkapi dengan alat full band seperti gitar (2 buah), bass, drum, mic 2 buah, ampli gitar 2, efek gitar 2, ampli bass 1, dan efek bass 1',
      ),
      const DataStudio(
        jenis: 'Studio 2',
        harga: 'Rp.70.000/jam',
        foto: 'images/studio2.jpg',
        deskripsi:
            'Studio 2 khusus untuk melakukan rekaman dengan alat full band seperti gitar (2 buah), bass, drum, mic 2 buah, ampli gitar 2, efek gitar 2, ampli bass 1, dan efek bass 1 dengan alat yang paling bagus',
      ),
      const DataStudio(
        jenis: 'Studio 3',
        harga: 'Rp.80.000/jam',
        foto: 'images/studio3.jpg',
        deskripsi:
            'Studio 3 yang dilengkapi dengan alat full band seperti gitar (2 buah), bass, drum, mic 2 buah, ampli gitar 2, efek gitar 2, ampli bass 1, dan efek bass 1 dengan alat yang paling bagus dari kami saat ini',
      ),
      const DataStudio(
        jenis: 'Studio 4',
        harga: 'Rp.90.000/jam',
        foto: 'images/studio4.png',
        deskripsi:
            'Studio 4 bisa untuk rekaman dan latihan yang dilengkapi dengan alat full band seperti gitar (2 buah), bass, drum, mic 2 buah, ampli gitar 2, efek gitar 2, ampli bass 1, dan efek bass 1',
      ),
      const DataStudio(
        jenis: 'Studio 5',
        harga: 'Rp.100.000/jam',
        foto: 'images/studio5.jpg',
        deskripsi:
            'Studio 5 bisa untuk rekaman dan latihan yang dilengkapi dengan alat full band seperti gitar (2 buah), bass, drum, mic 2 buah, ampli gitar 2, efek gitar 2, ampli bass 1, dan efek bass 1 dengan alat yang paling bagus',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Pilihan sewa studio"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (BuildContext context, int index) {
          final studio = dataIndex[index];
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Container(
                width: 100,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    studio.foto,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                studio.jenis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(studio.harga),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
