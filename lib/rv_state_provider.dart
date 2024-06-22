import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final counterProvider = StateProvider(
  (ref) => 0,
);


class MyHomePage extends ConsumerWidget {

  const MyHomePage({super.key});

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
        title: Text("State Provider"),
        actions: [
          IconButton(onPressed: () {
            //ref.invalidate(counterProvider);
            ref.refresh(counterProvider);
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

          //ref.read(counterProvider.notifier).state++;

          ref.read(counterProvider.notifier).update((state) => state+1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

}