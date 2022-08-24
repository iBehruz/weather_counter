import 'package:case1/blocs/counter/counter.dart';
import 'package:case1/blocs/counter/counter_cubit.dart';
import 'package:case1/blocs/themer/themer_cubit.dart';
import 'package:case1/blocs/weather/weather_bloc.dart';
import 'package:case1/sevices/api-repository.dart';
import 'package:case1/ui/screens/home.dart';
import 'package:case1/ui/thame/app_thame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/weather.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => CounterCubit()),
        BlocProvider(create: (BuildContext context) => ThemerCubit()),
        BlocProvider<WeatherBloc>(
          create: (BuildContext context) => WeatherBloc(WeatherRepository()),
        ),
      ],
      child: BlocBuilder<ThemerCubit, ThemeData>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Weather Counter',
            theme: state,
            initialRoute: Home.routeName,
            routes: {
              Home.routeName: (context) => const Home(),
            },
          );
        },
      ),
    );
  }
}
