import 'package:go_router/go_router.dart';
import 'package:todo_list/src/features/add_todo/views/add_todo.dart';
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
      GoRoute(
        path: '/add-todo',
        builder: (context, state) => const AddTodo(),
      )
    ],
  );
}
