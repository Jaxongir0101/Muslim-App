import 'package:compas/main.dart';
import 'package:compas/presentation/pages/home/home_page.dart';
import 'package:compas/presentation/pages/splash_page/splash_page.dart';
import 'package:compas/presentation/pages/welcome_page/welcome_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter router() => GoRouter(
        debugLogDiagnostics: true,
        navigatorKey: navigatorKey,
        initialLocation: '/',
        routes: [
          GoRoute(
            name: SplashPage.routeName,
            path: '/',
            routes: [
              GoRoute(
                name: HomePage.routeName,
                path: 'home',
                builder: (context, state) => const HomePage(),
              ),
            ],
            builder: (context, state) => const SplashPage(),
          ),
          GoRoute(
            name: WelcomePage.routeName,
            path: '/welcome',
            builder: (context, state) => const WelcomePage(),
          ),
        ],
      );
}
