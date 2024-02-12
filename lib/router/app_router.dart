import 'package:compas/main.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter router() => GoRouter(
        debugLogDiagnostics: true,
        navigatorKey: navigatorKey,
        initialLocation: '/',
        routes: [],
      );
}
