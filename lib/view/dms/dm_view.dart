// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/models/dm_list.dart';

class DmPage extends StatefulWidget {
  const DmPage({super.key});

  @override
  State<DmPage> createState() => _DmPageState();
}

class _DmPageState extends State<DmPage> {
  TextEditingController textController = TextEditingController();
  List<Widget> dmsBox = dmsList
      .map((item) => DmBoxWidget(
            imagePath: item['imagePath'],
            message: item['message'],
            name: item['fullName'],
          ))
      .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        backgroundColor: Colors.black,
        centerTitle: false,
        title: Text("DM"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Search",
                      fillColor: Colors.white70),
                ),
                height: 40,
              ),
            ),

            Container(
              height: 125,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: _storyItem(
                      faker.image.image(), faker.person.firstName(), index),
                ),
              ),
            ),

            // Container(
            //   height: MediaQuery.of(context).size.height * .60,
            //   child: Column(
            //     children: dmsBox,
            //   ),
            // ),
          ],
        ),
      ),
    );
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
                        child: GestureDetector(child: Icon((Icons.edit))),
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

class DmBoxWidget extends StatelessWidget {
  String name;
  String message;
  String imagePath;
  DmBoxWidget({
    Key? key,
    required this.name,
    required this.message,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .98,
      height: MediaQuery.of(context).size.height * .09,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imagePath),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                message,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              )
            ],
          ),
          Icon(
            Icons.camera_alt_outlined,
            size: 30,
            color: Colors.white,
          )
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
