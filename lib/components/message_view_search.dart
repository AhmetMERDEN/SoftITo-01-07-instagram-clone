import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MessageSearch extends StatelessWidget {
  const MessageSearch({super.key});

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
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
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
            ],
          ),
        ),
      ),
    );
  }
}
