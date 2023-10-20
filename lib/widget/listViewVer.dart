import 'package:flutter/material.dart';
import 'package:mobile/sound2.dart';

class DataSound {
  final String jenis;
  final String harga;
  final String foto;
  final String deskripsi;

  const DataSound({
    required this.jenis,
    required this.harga,
    required this.foto,
    required this.deskripsi,
  });
}

class SoundWidget extends StatelessWidget {
  final DataSound datasound;

  SoundWidget({required this.datasound});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => sound2(data: datasound),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 300,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.asset(
                  datasound.foto,
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      datasound.jenis,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      datasound.harga,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      datasound.deskripsi,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListViewVer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<DataSound> soundIndex = [
      const DataSound(
        jenis: 'Sound 2000 watt',
        harga: 'Rp.700.000',
        foto: 'images/sound1.jpeg',
        deskripsi:
            'Penyewaan Sound 2000 watt cocok untuk acara indoor dan outdoor kecil-kecil an',
      ),
      const DataSound(
        jenis: 'Sound 3000 watt',
        harga: 'Rp.900.000',
        foto: 'images/sound2.jpeg',
        deskripsi:
            'Penyewaan Sound 3000 watt cocok untuk acara indoor skala menengah dan outdoor selain konser',
      ),
      const DataSound(
        jenis: 'Sound 4000 watt',
        harga: 'Rp.1.000.000',
        foto: 'images/sound3.jpeg',
        deskripsi:
            'Penyewaan Sound 4000 watt cocok untuk acara indoor skala menengah dan outdoor selain konser',
      ),
      const DataSound(
        jenis: 'Sound 5000 watt',
        harga: 'Rp.1.100.000',
        foto: 'images/sound1.jpeg',
        deskripsi:
            'Penyewaan Sound 5000 watt cocok untuk acara indoor skala besar dan outdoor selain konser',
      ),
      const DataSound(
        jenis: 'Sound 6000 watt',
        harga: 'Rp.1.200.000',
        foto: 'images/sound5.jpeg',
        deskripsi:
            'Penyewaan Sound 6000 watt cocok untuk acara indoor skala besar dan outdoor selain konser',
      ),
    ];

    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Text(
            'Sewa Sound',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          Container(
            height: soundIndex.length * 320.0,
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              itemCount: soundIndex.length,
              separatorBuilder: (context, _) => SizedBox(),
              itemBuilder: (context, index) =>
                  SoundWidget(datasound: soundIndex[index]),
            ),
          ),
        ],
      ),
    );
  }
}
