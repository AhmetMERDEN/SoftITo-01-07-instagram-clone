import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/view_models/timeline_view_model.dart';
import 'package:provider/provider.dart';

class DiscoveryScreen extends StatefulWidget {
  const DiscoveryScreen({super.key});

  @override
  State<DiscoveryScreen> createState() => _DiscoveryScreenState();
}

class _DiscoveryScreenState extends State<DiscoveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // ignore: sort_child_properties_last
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 173, 161, 161)),
                        hintText: "Ara",
                        fillColor: Color.fromARGB(255, 114, 112, 112)),
                  ),
                  height: 40,
                ),
              ),
              Expanded(
                child: GridView.builder(
                    itemCount: 20,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 2,
                        crossAxisCount: 3),
                    itemBuilder: (context, index) => Container(
                        color: Colors.blue,
                        child: Image.network(
                          context
                              .watch<TimelineViewModel>()
                              .posts[index]
                              .userAvatar
                              .toString(),
                          fit: BoxFit.cover,
                        ))),
              )
            ],
          ),
        ));
  }
}


// context
//                 .watch<TimelineViewModel>()
//                 .posts
//                 .map(
//                   (e) => PostView(
//                     post: e,
//                   ),
//                 )
//                 .toList(),