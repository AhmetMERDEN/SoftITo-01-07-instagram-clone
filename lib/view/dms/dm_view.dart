// ignore_for_file: public_member_api_docs, sort_constructors_first
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
        child: Expanded(
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
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 35,
                        ),
                        index == 0
                            ? Positioned(
                                right: 0,
                                child: CircleAvatar(
                                  child: Icon(Icons.add),
                                  radius: 15,
                                  backgroundColor: Colors.amber,
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
                                              color: Colors.amber,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
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
              ),
              Container(
                height: MediaQuery.of(context).size.height * .60,
                child: Column(
                  children: dmsBox,
                ),
              ),
            ],
          ),
        ),
      ),
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
}
