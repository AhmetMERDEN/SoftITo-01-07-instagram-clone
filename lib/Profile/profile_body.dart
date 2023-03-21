import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/Profile/profiletabBar.dart';

import 'Styles.dart';

class ProfilePageBody extends StatelessWidget {
  const ProfilePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // BU BÖLÜM PROFİL RESMİNİN, GÖNDERİ, TAKİPÇİ VS İÇEREN KISIM
          Container(
            decoration: BoxDecoration(),
            // ignore: sort_child_properties_last
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://st2.depositphotos.com/11450098/50564/i/600/depositphotos_505649694-stock-photo-sunset-wheat-field-young-beautiful.jpg"),
                          radius: 45,
                        ),
                        Divider(
                          height: 5,
                        ),
                        Text(
                          "Ahmet Merden",
                          style: AllTextStyle.avatarTitle,
                        ),
                        Text(
                          "Motor'lu bir Hayat",
                          style: AllTextStyle.avatarTitle,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "0",
                          style: AllTextStyle.allStyle,
                        ),
                        Text(
                          "Gönderi",
                          style: AllTextStyle.allStyle,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          "170",
                          style: AllTextStyle.allStyle,
                        ),
                        Text(
                          "Takipçi",
                          style: AllTextStyle.allStyle,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          "165",
                          style: AllTextStyle.allStyle,
                        ),
                        Text(
                          "Takip",
                          style: AllTextStyle.allStyle,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            height: 150,
          ),

          Container(
            padding: EdgeInsets.only(left: 10),
            height: 45,
            child: Row(
              children: [
                ElevatedButton(
                    style: ElevatedButtonStyles.allElevated,
                    onPressed: () {},
                    child: Text(
                      "Profili Düzenle",
                      style: AllTextStyle.allStyle,
                    )),
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                    style: ElevatedButtonStyles.allElevated,
                    onPressed: () {},
                    child: Text(
                      "Profili paylaş",
                      style: AllTextStyle.allStyle,
                    )),
                SizedBox(
                  width: 15,
                ),
                ElevatedButton.icon(
                  style: ElevatedButtonStyles.allElevated,
                  onPressed: () {},
                  icon: Icon(Icons.person_add_outlined),
                  label: Text(""),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),

          //BU BÖLÜM HİKAYELERDE ÖNE ÇIKANLAR BÖLÜMÜ
          Container(
            padding: EdgeInsets.all(10.0),
            height: 170,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Hikayelerde Öne Çıkanlar",
                  style: AllTextStyle.allStyle,
                ),
                Text(
                  "Favori hikayelerini profilinde tut",
                  style: AllTextStyle.allStyle,
                ),
                Divider(
                  height: 10,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      foregroundColor: Colors.white,
                      radius: 40,
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      foregroundColor: Colors.white,
                      radius: 40,
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      foregroundColor: Colors.white,
                      radius: 40,
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      foregroundColor: Colors.white,
                      radius: 40,
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          // BU KISIM ALTTAKİ FOTOĞRAFLARIM VE BULUMDUĞUM FOTOĞRAFLAR BÖLÜMÜ
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: 350,
                  child: ProfilPageTab(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
