import 'package:counter_app/src/app.dart';
import 'package:counter_app/src/app_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = const AppBlocObserver();
  runApp(const App());
}
