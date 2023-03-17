import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MessageProfiles extends StatelessWidget {
  const MessageProfiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child:
              _storyItem(faker.image.image(), faker.person.firstName(), index),
        ),
      ),
    );

    // Container(
    //   height: MediaQuery.of(context).size.height * .60,
    //   child: Column(
    //     children: dmsBox,
    //   ),
    // ),
  }

  Widget _storyItem(String image, String name, int index) {
    return Column(
      children: [
        SizedBox(
          width: 85,
          height: 85,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.all(3),
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              index == 0
                  ? Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        foregroundColor: Colors.white,
                        child: Icon(
                          Icons.add,
                          // color: Colors.white,
                        ),
                        radius: 15,
                        backgroundColor: Colors.grey.shade600,
                      ),
                    )
                  : Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade600.withOpacity(0.95),
                            borderRadius: BorderRadius.circular(15)),
                        child: Icon((Icons.add)),
                        height: 35,
                        width: 70,
                      ),
                    )
            ],
          ),
        ),
        SizedBox(
          width: 70,
          child: Text(
            name,
            overflow: TextOverflow.fade,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        )
      ],
    );
  }
}
