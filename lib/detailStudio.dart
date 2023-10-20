import 'package:flutter/material.dart';
import 'package:mobile/studio2.dart';

class detailStudio extends StatelessWidget {
  final List data = [
    sound(image: "images/gitar1.jpg", text: "Gitar Gibson V Style"),
    sound(image: "images/gitar2.webp", text: "Gitar Fender Stratocaster"),
    sound(image: "images/bass.webp", text: "Bass Fender Stratocaster 5 String"),
    sound(image: "images/drum.jpg", text: "Mapex Drumset"),
    sound(image: "images/mic2.jpeg", text: "Mic"),
    sound(image: "images/ampli_gitar.jpg", text: "Marshal Amplifier"),
    sound(image: "images/ampli2.jpeg", text: "Amd Amplifier"),
    sound(image: "images/ampli_bass.webp", text: "Ultra Bass Amplifier"),
    sound(
        image: "images/efek1.jpeg",
        text: "Analog Guitar Efek with Pedal Board"),
    sound(image: "images/efek2.jpg", text: "AX8 Digital Guitar Efek"),
    sound(image: "images/efek_bass.jpg", text: "DBoss Bass Efek"),
    sound(image: "images/kabel2.jpg", text: "Kabel Jack to Jack"),
  ];

  detailStudio({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Alat Studio"),
      ),
      body: GridView.builder(
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
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
