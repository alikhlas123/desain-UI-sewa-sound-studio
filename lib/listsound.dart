import 'package:flutter/material.dart';

class Data {
  final String jenis;
  final String harga;
  final String foto;
  final String deskripsi;

  const Data({
    required this.jenis,
    required this.harga,
    required this.foto,
    required this.deskripsi,
  });
}

class pageDua extends StatelessWidget {
  pageDua({super.key});

  final List<int> numberList = List<int>.generate(10, (int index) => index);

  @override
  Widget build(BuildContext context) {
    List<Data> soundIndex = [
      const Data(
        jenis: 'Sound 1000 watt',
        harga: 'Rp.500.000',
        foto: 'images/sound1.jpeg',
        deskripsi:
            'Penyewaan Sound 1000 watt cocok untuk acara indoor dan outdoor kecil-kecil an',
      ),
      const Data(
        jenis: 'Sound 2000 watt',
        harga: 'Rp.700.000',
        foto: 'images/sound2.jpeg',
        deskripsi:
            'Penyewaan Sound 2000 watt cocok untuk acara indoor dan outdoor kecil-kecil an',
      ),
      const Data(
        jenis: 'Sound 3000 watt',
        harga: 'Rp.900.000',
        foto: 'images/sound3.jpeg',
        deskripsi:
            'Penyewaan Sound 3000 watt cocok untuk acara indoor skala menengah dan outdoor selain konser',
      ),
      const Data(
        jenis: 'Sound 4000 watt',
        harga: 'Rp.1.000.000',
        foto: 'images/sound4.jpeg',
        deskripsi:
            'Penyewaan Sound 4000 watt cocok untuk acara indoor skala menengah dan outdoor selain konser',
      ),
      const Data(
        jenis: 'Sound 5000 watt',
        harga: 'Rp.1.100.000',
        foto: 'images/sound5.jpeg',
        deskripsi:
            'Penyewaan Sound 5000 watt cocok untuk acara indoor skala besar dan outdoor selain konser',
      ),
      const Data(
        jenis: 'Sound 6000 watt',
        harga: 'Rp.1.200.000',
        foto: 'images/sound6.jpeg',
        deskripsi:
            'Penyewaan Sound 6000 watt cocok untuk acara indoor skala besar dan outdoor selain konser',
      ),
      const Data(
        jenis: 'Sound 7000 watt',
        harga: 'Rp.1.300.000',
        foto: 'images/sound6.jpeg',
        deskripsi:
            'Penyewaan Sound 7000 watt cocok untuk acara indoor skala besar dan outdoor skala acara gigs lokal',
      ),
      const Data(
        jenis: 'Sound 8000 watt',
        harga: 'Rp.1.400.000',
        foto: 'images/sound8.jpeg',
        deskripsi:
            'Penyewaan Sound 8000 watt cocok untuk acara indoor skala besar dan outdoor skala acara gigs lokal',
      ),
      const Data(
        jenis: 'Sound 9000 watt',
        harga: 'Rp.1.500.000',
        foto: 'images/sound9.jpeg',
        deskripsi:
            'Penyewaan Sound 9000 watt cocok untuk acara indoor skala besar dan outdoor skala besar seperti konser',
      ),
      const Data(
        jenis: 'Sound 10.000 watt',
        harga: 'Rp.1600.000',
        foto: 'images/sound10.jpeg',
        deskripsi:
            'Penyewaan Sound 10.000 watt cocok untuk acara indoor skala besar dan outdoor skala besar seperti konser',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Pilihan sewa alat"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (BuildContext context, int index) {
          final data = soundIndex[index];
          return Card(
            elevation: 5, // Add elevation for a card-like appearance
            margin: EdgeInsets.all(10), // Add margin for spacing
            child: ListTile(
              leading: Container(
                width: 80,
                height: 80,
                child: Image.asset(data.foto),
              ),
              title: Text(data.jenis),
              subtitle: Text(data.harga),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
