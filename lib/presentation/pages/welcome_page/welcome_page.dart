import 'package:compas/presentation/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class WelcomePage extends StatefulWidget {
  static const String routeName = "/welcome";
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff040c23),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Muslim App",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              "Learn Quran and\n Recite once everyday",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 48),
            Stack(
              fit: StackFit.passthrough,
              alignment: Alignment.center,
              children: [
                Container(
                  height: 450,
                  padding: const EdgeInsets.only(bottom: 24),
                  child: SvgPicture.asset(
                    'assets/svg/welcome.svg',
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 24, vertical: 12)),
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xffF9B091))),
                    child: const Text(
                      "Get Start",
                      style: TextStyle(
                        color: Color(0xff091945),
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    onPressed: () {
                      context.pushNamed(HomePage.routeName);
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
