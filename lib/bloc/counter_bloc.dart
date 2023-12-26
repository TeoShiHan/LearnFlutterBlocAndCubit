import 'package:counter_app_with_bloc/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_event.dart';


class CounterBloc extends Bloc<CounterIncrementEvent, CounterState>{
  CounterBloc(): super(CounterState(count: 0)){
    on<CounterIncrementEvent>(
        (event, emit) => emit(CounterState(count: state.count + 1))
    );
  }
}