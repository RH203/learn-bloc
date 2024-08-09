import 'package:go_router/go_router.dart';
import 'package:todo_list/src/features/homescreen/views/homescreen_page.dart';

class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomescreenPage(),
      ),
    ],
  );
}
