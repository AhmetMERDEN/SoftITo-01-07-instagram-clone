import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TimelineStories extends StatefulWidget {
  const TimelineStories({super.key});

  @override
  State<TimelineStories> createState() => _TimelineStoriesState();
}

class _TimelineStoriesState extends State<TimelineStories> {
  Faker faker = Faker();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _storyItem(faker.image.image(), faker.person.firstName()),
          _storyItem(faker.image.image(), faker.person.firstName()),
          _storyItem(faker.image.image(), faker.person.firstName()),
          _storyItem(faker.image.image(), faker.person.firstName()),
          _storyItem(faker.image.image(), faker.person.firstName()),
          _storyItem(faker.image.image(), faker.person.firstName()),
          _storyItem(faker.image.image(), faker.person.firstName()),
          _storyItem(faker.image.image(), faker.person.firstName()),
          _storyItem(faker.image.image(), faker.person.firstName()),
          _storyItem(faker.image.image(), faker.person.firstName()),
          _storyItem(faker.image.image(), faker.person.firstName()),
          _storyItem(faker.image.image(), faker.person.firstName()),
          _storyItem(faker.image.image(), faker.person.firstName()),
          _storyItem(faker.image.image(), faker.person.firstName()),
          _storyItem(faker.image.image(), faker.person.firstName()),
          _storyItem(faker.image.image(), faker.person.firstName()),
        ],
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
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                Colors.purple,
                Colors.pink,
                Colors.orange,
              ],
            ),
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
