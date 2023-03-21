import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'Styles.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({super.key});
  static const List<IconData> menuIcons = <IconData>[
    Icons.settings,
    Icons.timelapse_outlined,
    Icons.av_timer,
    Icons.qr_code,
    Icons.flag,
    Icons.card_giftcard_rounded,
    Icons.menu,
    Icons.star_outline,
  ];
  static const List<IconData> boxIcons = <IconData>[
    Icons.play_arrow_outlined,
    Icons.table_chart_rounded,
    Icons.add_alarm_sharp,
    Icons.healing_sharp,
    Icons.signal_cellular_0_bar_outlined,
    Icons.newspaper_outlined
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
                      child: SafeArea(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      height: 5,
                                      width: 45,
                                    ),
                                  ),
                                  Divider(
                                    height: 10,
                                  ),
                                  Text(
                                    "Oluştur",
                                    style: AllTextStyle.avatarTitle,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    boxIcons[0],
                                    size: 35,
                                    color: Colors.white,
                                  ),
                                  Text("Reels Videosu",
                                      style: AllTextStyle.avatarTitle),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    boxIcons[1],
                                    size: 35,
                                    color: Colors.white,
                                  ),
                                  Text("Gönderi",
                                      style: AllTextStyle.avatarTitle),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    boxIcons[2],
                                    size: 35,
                                    color: Colors.white,
                                  ),
                                  Text("Hikaye",
                                      style: AllTextStyle.avatarTitle),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    boxIcons[3],
                                    size: 35,
                                    color: Colors.white,
                                  ),
                                  Text("Öne Çıkan Hikaye",
                                      style: AllTextStyle.avatarTitle),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    boxIcons[4],
                                    size: 35,
                                    color: Colors.white,
                                  ),
                                  Text("Canlı",
                                      style: AllTextStyle.avatarTitle),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    boxIcons[5],
                                    size: 35,
                                    color: Colors.white,
                                  ),
                                  Text("Rehber",
                                      style: AllTextStyle.avatarTitle),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            },
            child: Icon(
              Icons.add_box_outlined,
              size: 35,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    color: Colors.grey.shade800,
                    child: SafeArea(
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(15)),
                                height: 5,
                                width: 45,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  menuIcons[0],
                                  size: 35,
                                  color: Colors.white,
                                ),
                                Text("Ayarlar",
                                    style: AllTextStyle.avatarTitle),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  menuIcons[1],
                                  size: 35,
                                  color: Colors.white,
                                ),
                                Text("Hareketlerin",
                                    style: AllTextStyle.avatarTitle),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  menuIcons[2],
                                  size: 35,
                                  color: Colors.white,
                                ),
                                Text("Arşiv", style: AllTextStyle.avatarTitle),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  menuIcons[3],
                                  size: 35,
                                  color: Colors.white,
                                ),
                                Text("QR Kodu",
                                    style: AllTextStyle.avatarTitle),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  menuIcons[4],
                                  size: 35,
                                  color: Colors.white,
                                ),
                                Text("Kaydedilenler",
                                    style: AllTextStyle.avatarTitle),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  menuIcons[5],
                                  size: 35,
                                  color: Colors.white,
                                ),
                                Text("Siparişler ve ödemeler",
                                    style: AllTextStyle.avatarTitle),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  menuIcons[6],
                                  size: 35,
                                  color: Colors.white,
                                ),
                                Text("Yakın Arkadaşlar",
                                    style: AllTextStyle.avatarTitle),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  menuIcons[7],
                                  size: 35,
                                  color: Colors.white,
                                ),
                                Text("Favoriler",
                                    style: AllTextStyle.avatarTitle),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: Icon(
              Icons.menu,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(65);
}
