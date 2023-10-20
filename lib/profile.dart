import 'package:flutter/material.dart';
import 'package:mobile/menu.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/rob-simmons-yYh5hf9atNw-unsplash.webp"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset("images/banjari-01.png"),
              height: 250,
              width: 250,
            ),
            SizedBox(height: 20),
            Container(
              constraints: BoxConstraints(maxWidth: 500),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Vendor UKM Banjari adalah sebuah perusahaan inovatif yang mengkhususkan diri dalam menyediakan solusi audio berkualitas tinggi untuk berbagai kebutuhan. Dengan lebih dari sepuluh tahun pengalaman dalam industri audio, kami telah menjadi pilihan utama bagi pelanggan yang menginginkan pengalaman audio yang luar biasa. Kami menawarkan beragam produk dan layanan yang mencakup: Sound Systems (Indoor dan Outdoor), Audio Equipment, Studio Musik dan Rekaman, dan Custom Audio Solutions.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.amber.shade700),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return Menu();
                  },
                ));
              },
              child: Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}
