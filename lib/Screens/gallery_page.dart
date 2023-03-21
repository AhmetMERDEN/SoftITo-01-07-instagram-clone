import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Icon(
                Icons.add_box_outlined,
                color: Colors.white,
                size: 75,
              ),
            ),
            Text(
              "Profil",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Divider(
              height: 5,
            ),
            Text(
              "Paylaştığın fotoğraf ve videolar \n           profilinde görünecek.",
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
            Divider(
              height: 5,
            ),
            Text(
              "İlk fotoğrafını veya videonu paylaş",
              style: TextStyle(fontSize: 12, color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
