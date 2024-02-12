import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "home";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff040c23),
      appBar: AppBar(
        //sluver appbar
        backgroundColor: const Color(0xff040c23),
        automaticallyImplyLeading: false,
        leading: SizedBox(
          height: 24,
          width: 24,
          child: SvgPicture.asset(
            'assets/images/leading.svg',
            fit: BoxFit.contain,
            height: 24,
            width: 24,
          ),
        ),
      ),
    );
  }
}
