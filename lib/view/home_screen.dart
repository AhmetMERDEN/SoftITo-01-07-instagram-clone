import 'package:flutter/material.dart';
import 'package:instagram_clone/components/bottom_navbar.dart';
import 'package:instagram_clone/components/profile_view.dart';
import 'package:instagram_clone/components/timeline_appbar.dart';
import 'package:instagram_clone/view/home/timeline_screen.dart';
import 'package:instagram_clone/view_models/home_page_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: RefreshIndicator(onRefresh: onRefresh, child: screen),
      backgroundColor: Colors.black,
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }

  PreferredSizeWidget? get appbar {
    switch (context.watch<HomePageViewModel>().page) {
      case 0:
        return const TimelineAppbar();

      default:
        return null;
    }
  }

  Widget get screen {
    switch (context.watch<HomePageViewModel>().page) {
      case 0:
        return const TimelineScreen();

      case 4:
        return const ProfilePage();
      default:
        return Container();
    }
  }
}

Future<void> onRefresh() async {
  await Future.delayed(Duration(seconds: 1));
}
