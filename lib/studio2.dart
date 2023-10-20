import 'package:flutter/material.dart';
import 'package:mobile/detailStudio.dart';
import 'package:mobile/widget/listViewHor.dart';

class sound {
  String image;
  String text;

  sound({required this.image, required this.text});
}

class studio2 extends StatelessWidget {
  final DataStudio studio;

  studio2({
    Key? key,
    required this.studio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(studio.jenis),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Container(
                  width: 250,
                  child: Image.asset(
                    studio.foto,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      studio.deskripsi,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "Untuk melihat alat studio, klik tombol di bawah ini",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return detailStudio();
                        },
                      ));
                    },
                    child: Text("Detail Alat Studio"),
                  ),
                  SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Pesan"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
