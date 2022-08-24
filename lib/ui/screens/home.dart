import 'package:case1/blocs/counter/counter_cubit.dart';
import 'package:case1/blocs/themer/themer_cubit.dart';
import 'package:case1/blocs/weather/weather_bloc.dart';
import 'package:case1/ui/thame/app_thame.dart';

import 'package:case1/ui/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided
/// [CounterCubit] state and notifies it in response to user input.
/// {@endtemplate}
class Home extends StatelessWidget {


  static String routeName = "/home";

  /// {@macro counter_view}
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme
        .of(context)
        .textTheme;
    return Scaffold(
        appBar: AppBar(title: Center(child: const Text('Weather Counter'))),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
                child: BlocBuilder<WeatherBloc, WeatherState>(
                  builder: (context, state) {
                    if(state is WeatherLoadedState) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'Weather for ${state.loaded.areaName} ${state.loaded.country}'),
                              Text('Temp ${state.loaded.temperature} (min ${state.loaded.tempMin}, max ${state.loaded.tempMax})',
                            ),
                          ],
                        ),
                      );
                    }

                    if(state is WeatherLoadingState) {
                      return const UnconstrainedBox(
                          child: CircularProgressIndicator());
                    }

                    if(state is WeatherErrorState){
                      return const Text(
                          'Error get Weather, try again later.',
                      );
                    }

                    return const Text(
                      'Press the icon to get the location',
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'You have pressed the button this many times',
              ),
              BlocBuilder<CounterCubit, int>(
                builder: (context, state) {
                  return Text('$state', style: textTheme.headline5);
                },
              ),
            ],
          ),
        ),
        floatingActionButton: SizedBox(
          height: 150,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: 120,
                  child: Flex(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    direction: Axis.vertical,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: FloatingActionButton(
                          child: Icon(Icons.cloud),
                          onPressed: () => BlocProvider.of<WeatherBloc>(context).add(WeatherLoadEvent()),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        flex: 1,
                        child: FloatingActionButton(
                            child: Icon(themeType == AppTheme.themeLight
                                ? Icons.dark_mode
                                : Icons.sunny),
                            onPressed: () {
                              if (themeType == AppTheme.themeLight) {
                                context.read<ThemerCubit>().dark();
                              } else {
                                context.read<ThemerCubit>().light();
                              }
                            }),
                      )
                    ],
                  ),
                ),
                BlocBuilder<CounterCubit, int>(builder: (context, state) {
                  return SizedBox(
                    width: 60,
                    child: Flex(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      direction: Axis.vertical,
                      children: <Widget>[
                        state >= 10
                            ? const Expanded(flex: 1, child: SizedBox())
                            : Expanded(
                          flex: 1,
                          child: FloatingActionButton(
                            child: const Icon(Icons.add),
                            onPressed: () =>
                                context.read<CounterCubit>().increment(),
                          ),
                        ),
                        const SizedBox(height: 20),
                        state <= 0
                            ? const Expanded(flex: 1, child: SizedBox())
                            : Expanded(
                          flex: 1,
                          child: FloatingActionButton(
                            child: const Icon(Icons.remove),
                            onPressed: () =>
                                context.read<CounterCubit>().decrement(),
                          ),
                        ),
                      ],
                    ),
                  );
                })
              ]),
        ));
  }
}
