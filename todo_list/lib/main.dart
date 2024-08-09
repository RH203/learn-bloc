import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_list/src/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const App());
}
