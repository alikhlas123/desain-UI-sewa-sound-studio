import 'package:flutter/material.dart';
import 'package:mobile/detailSound.dart';
import 'package:mobile/widget/listViewVer.dart';

class sound {
  String image;
  String text;

  sound({required this.image, required this.text});
}

class sound2 extends StatelessWidget {
  final DataSound data;

  sound2({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.jenis),
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
                  padding: EdgeInsets.all(10),
                  width: 250,
                  height: 250,
                  child: Image.asset(data.foto, fit: BoxFit.cover),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      data.deskripsi,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "Untuk mengetahui detail barang silahkan klik tombol dibawah ini",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return detailSound();
                        },
                      ));
                    },
                    child: Text("Detail Barang"),
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
