import 'package:flutter/material.dart';
import 'package:mobile/widget/customNavBar.dart';
import 'package:mobile/widget/header.dart';
import 'package:mobile/widget/listViewHor.dart';
import 'package:mobile/widget/listViewVer.dart';
import 'package:mobile/widget/search.dart';

class Menu extends StatefulWidget {
  Menu({Key? key}) : super(key: key);

  @override
  MenuUtama createState() => MenuUtama();
}

class MenuUtama extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 20),
                    // Header
                    Header(),

                    SizedBox(height: 20),

                    // Search
                    SearchWidget(),
                  ],
                ),
              ),
              // ListView horizontal
              ListViewHor(),

              SizedBox(height: 20),

              // ListView vertical
              ListViewVer(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
