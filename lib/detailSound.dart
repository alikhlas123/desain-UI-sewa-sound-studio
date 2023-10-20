import 'package:flutter/material.dart';
import 'package:mobile/pageTiga.dart';

class detailSound extends StatelessWidget {
  final List data = [
    sound(image: "images/huper.jpg", text: "Huper"),
    sound(image: "images/subwoofer.jpg", text: "Subwoofer"),
    sound(image: "images/mixer.jpg", text: "Mixer"),
    sound(image: "images/mic.jpg", text: "Mic"),
    sound(image: "images/stand.webp", text: "Stand Mic"),
    sound(image: "images/kabel.jpg", text: "Kabel"),
    sound(image: "images/speaker_monitor.webp", text: "Monitor"),
  ];

  detailSound({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Barang Studio"),
      ),
      body: GridView.builder(
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(data[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    data[index].text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
