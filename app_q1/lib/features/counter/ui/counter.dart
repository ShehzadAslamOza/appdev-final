import 'package:app_q1/features/counter/bloc/counter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  final CounterBloc counterBloc = CounterBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterBloc, CounterState>(
      bloc: counterBloc,
      listener: (context, state) {},
      builder: (context, state) {
        return Row(
          children: [
            IconButton(
              icon: Icon(Icons.remove_circle, color: Colors.pink),
              onPressed: () {
                counterBloc.add(DecrementEvent());
              },
            ),
            Text(
              '${state.counter}',
            ),
            IconButton(
              icon: Icon(Icons.add_circle, color: Colors.pink),
              onPressed: () {
                counterBloc.add(IncrementEvent());
              },
            ),
          ],
        );
      },
    );
  }
}
