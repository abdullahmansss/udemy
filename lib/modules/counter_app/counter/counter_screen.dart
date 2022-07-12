import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter/modules/counter_app/counter/cubit/cubit.dart';
import 'package:udemy_flutter/modules/counter_app/counter/cubit/states.dart';

// state less contain one class provide widget

// state ful contain  classes

// 1. first class provide widget
// 2. second class provide state from this widget

class CounterScreen extends StatelessWidget
{
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (BuildContext context, CounterStates state)
        {
          if(state is CounterMinusState)
          {
            debugPrint('minus state ${state.counter}');
          }

          if(state is CounterPlusState)
          {
            debugPrint('plus state ${state.counter}');
          }
        },
        builder: (BuildContext context, CounterStates state)
        {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Counter',
              ),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: ()
                    {
                      CounterCubit.get(context).minus();
                    },
                    child: const Text(
                      'MINUS',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Text(
                      '${CounterCubit.get(context).counter}',
                      style: const TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: ()
                    {
                      CounterCubit.get(context).plus();
                    },
                    child: const Text(
                      'PLUS',
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}