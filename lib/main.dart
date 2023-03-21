import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_init.dart';
import 'view_models/discovery_view_model.dart';
import 'view_models/home_page_view_model.dart';
import 'view_models/timeline_view_model.dart';
import 'screens/content_screen.dart';
import 'screens/home_page.dart';
import 'screens/like_icon.dart';
import 'screens/options_screen.dart';

void main() => runApp(
      DevicePreview(
        enabled: false,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomePageViewModel()),
        ChangeNotifierProvider(create: (context) => TimelineViewModel()),
        ChangeNotifierProvider(create: (context) => DiscoveryViewModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AppInit(),
      ),
    );
  }
}
