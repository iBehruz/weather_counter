import 'package:case1/blocs/counter/counter_observer.dart';
import 'package:case1/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(const MyApp());
}

