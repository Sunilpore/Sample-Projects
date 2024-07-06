import 'dart:async';

import 'package:ekart/notifier_provider/counter_demo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final counterProvider = StateNotifierProvider.autoDispose<CounterDemo,int>((ref){
    final refLink = ref.keepAlive();  //Keep the State Alive
    final timer = Timer(Duration(seconds: 10),(){
      refLink.close();  //auto-dispose the State after 'T' seconds (10 seconds) seconds
    });

    ref.onDispose(() => timer.cancel());
    return CounterDemo();
});


class CounterPage extends ConsumerWidget {

  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final counter = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Counter"),),
      body: Center(
        child: Text('$counter', style: const TextStyle(fontSize: 25),),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).increment();
        },
        child: const Icon(Icons.add),
      )
    );
  }

}
