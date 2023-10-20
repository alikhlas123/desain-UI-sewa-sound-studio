import 'package:flutter/material.dart';
import 'package:mobile/studio2.dart';

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

class ListViewHor extends StatelessWidget {
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
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.all(10)),
        Text(
          'Sewa Studio',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        Container(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: dataIndex.length,
            separatorBuilder: (context, _) => SizedBox(width: 12),
            itemBuilder: (context, index) =>
                StudioWidget(datastudio: dataIndex[index]),
          ),
        ),
      ],
    );
  }
}

class StudioWidget extends StatelessWidget {
  final DataStudio datastudio;

  StudioWidget({required this.datastudio});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 3,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return studio2(studio: datastudio);
              },
            ));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset(
                  datastudio.foto,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      datastudio.jenis,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      datastudio.harga,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
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
