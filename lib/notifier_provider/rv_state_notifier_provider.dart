import 'package:ekart/notifier_provider/counter_demo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final counterProvider = StateNotifierProvider<CounterDemo, int>(
      (ref) => CounterDemo()
);


class CounterPage extends ConsumerWidget {

  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final count = ref.watch(counterProvider);

    ref.listen(counterProvider, (previous, next) {

      if(next%5 == 0){
        ScaffoldMessenger.of(context).
          showSnackBar(SnackBar(content: Text('The value is $next'),
          ),
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("State Notifier Provider"),
        actions: [
          IconButton(onPressed: () {
            //ref.invalidate(counterProvider);
            var result = ref.refresh(counterProvider);
          },

            icon: const Icon(Icons.refresh),)
        ],
      ),

      body: Center(
        child: Text(
          '$count',
          style: const TextStyle(fontSize: 30),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {

          ref.read(counterProvider.notifier).increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

}