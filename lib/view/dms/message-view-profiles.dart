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
          child: Stack(
            children: [
              CircleAvatar(
                radius: 35,
              ),
              _storyItem(faker.image.image(), faker.person.firstName()),
              _storyItem(faker.image.image(), faker.person.firstName()),
              _storyItem(faker.image.image(), faker.person.firstName()),
              _storyItem(faker.image.image(), faker.person.firstName()),
              _storyItem(faker.image.image(), faker.person.firstName()),
              _storyItem(faker.image.image(), faker.person.firstName()),
              _storyItem(faker.image.image(), faker.person.firstName()),
              _storyItem(faker.image.image(), faker.person.firstName()),
              index == 0
                  ? Positioned(
                      right: 0,
                      child: CircleAvatar(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        radius: 15,
                        backgroundColor: Colors.grey,
                      ),
                    )
                  : Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Icon(Icons.add),
                                height: 25,
                                width: 70,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }

  Widget _storyItem(String image, String name) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Container(
            margin: EdgeInsets.all(3),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
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
