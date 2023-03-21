import 'package:flutter/material.dart';
import 'package:instagram_clone/Profile/profileHeaderWidget.dart';

import '../Screens/gallery_page.dart';
import '../Screens/your_photos.dart';

class ProfilPageTab extends StatelessWidget {
  const ProfilPageTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, _) {
          return [
            SliverList(
                delegate: SliverChildListDelegate([
              profileHeaderWidget(context),
            ]))
          ];
        },
        body: Column(
          children: const [
            Material(
              color: Colors.black,
              child: TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorWeight: 1,
                indicatorColor: Colors.grey,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.grid_on_sharp,
                      color: Colors.white,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.person_pin_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [Gallery(), Photos()],
            ))
          ],
        ),
      ),
    );
  }
}
