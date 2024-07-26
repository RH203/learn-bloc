import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:timer_app/app.dart';
import 'package:timer_app/observer.dart';

void main() {
  Bloc.observer = const Observer();
  runApp(const App());
}
