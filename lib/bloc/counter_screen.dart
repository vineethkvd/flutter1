import 'package:flutter/material.dart';
import 'package:flutter1/bloc/logic/bloc/counter_bloc.dart';
import 'package:flutter1/bloc/logic/bloc/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("Bloc state management"),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Count : ${state.counterValue}",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      return context.read<CounterBloc>().add(IncrementEvent());
                    },
                    child: Text('+')),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: () {
                  return context.read<CounterBloc>().add(DecrementEvent());
                }, child: Text('-'))
              ],
            )
          ]);
        },
      ),
    );
  }
}
