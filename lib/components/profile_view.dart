import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  static const List<Tab> myTabs = <Tab>[
    Tab(
      icon: Icon(Icons.table_bar_outlined),
    ),
    Tab(
      icon: Icon(Icons.person_2_outlined),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(Icons.lock_outlined),
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: false,
        title: Text("mrdn_ahmet"),
        actions: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      color: Colors.grey.shade800,
                      child: Column(
                        children: [],
                      ),
                    );
                  });
            },
            child: Icon(Icons.add_box_outlined),
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      color: Colors.grey.shade800,
                    );
                  });
            },
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: Column(
        children: [
          // BU BÖLÜM PROFİL RESMİNİN, GÖNDERİ, TAKİPÇİ VS İÇEREN KISIM
          Container(
            decoration: BoxDecoration(),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 45,
                    )
                  ],
                )
              ],
            ),
            height: 200,
          ),

          //BU BÖLÜM HİKAYELERDE ÖNE ÇIKANLAR BÖLÜMÜ
          Container(
            height: 200,
            color: Colors.green,
          ),

          // BU KISIM ALTTAKİ FOTOĞRAFLARIM VE BULUMDUĞUM FOTOĞRAFLAR BÖLÜMÜ
          Container(
            child: Column(
              children: <Widget>[],
            ),
          ),
        ],
      ),
    );
  }
}
