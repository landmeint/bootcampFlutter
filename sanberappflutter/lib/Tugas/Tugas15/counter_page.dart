import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/counter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Bloc'),
      ),
      body: BlocBuilder<CounterBloc, int>(
        builder: (context,count) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Count',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  '$count',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              context.read<CounterBloc>().increment();
            },
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              context.read<CounterBloc>().decrement();
            },
          ),
        ],
      ),
    );
  }
}