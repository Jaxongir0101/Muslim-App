import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

import 'presentation/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool hasPermission = true;

  late LocationPermission? permission;

  Future<LocationPermission> requestPermission() async {
    return await Geolocator.requestPermission();
  }

  Future<void> getLocation() async {
    permission = await Geolocator.requestPermission();

    if (permission == null) {
      permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        permission = await requestPermission();
        setState(() {
          hasPermission = true;
        });
      }
    }
  }

  @override
  void initState() {
    requestPermission();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qibla ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FutureBuilder(
        builder: (context, snapshot) {
          if (hasPermission) {
            print("objec11t");
            return const HomePage();
          } else {
            print("object");
            return const Scaffold(
              backgroundColor: Color.fromARGB(255, 48, 48, 48),
            );
          }
        },
        future: getLocation(),
      ),
    );
  }
}
