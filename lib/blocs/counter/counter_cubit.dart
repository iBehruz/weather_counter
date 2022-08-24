import 'package:bloc/bloc.dart';
import 'package:case1/ui/thame/app_thame.dart';
import 'package:case1/ui/utils.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(1);
  int get n => themeType == AppTheme.themeLight ? 1 : 2;
  int get incrementState => state + n;
  int get decrementState => state - n;

  /// Add 1 to the current state.
  void increment() => emit(incrementState > 10 ? 10 : incrementState);

  /// Subtract 1 from the current state.
  void decrement() => emit(decrementState < 0 ? 0 : decrementState);
}
