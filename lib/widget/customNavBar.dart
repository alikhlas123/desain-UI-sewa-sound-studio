import 'package:flutter/material.dart';
import 'package:mobile/menu.dart';
import 'package:mobile/listsound.dart';
import 'package:mobile/profile.dart';
import 'package:mobile/studio.dart';

class CustomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return Menu();
                },
              ));
            },
            child: Icon(
              Icons.home,
              size: 35,
              color: Colors.black,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return pageDua();
                },
              ));
            },
            child: Icon(
              Icons.speaker_group_rounded,
              size: 35,
              color: Colors.black,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return StudioPage();
                },
              ));
            },
            child: Icon(
              Icons.music_note_sharp,
              size: 35,
              color: Colors.black,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return Profile();
                },
              ));
            },
            child: Icon(
              Icons.person,
              size: 35,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
