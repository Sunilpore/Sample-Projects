import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



final streamProvider = StreamProvider<int>(
        (ref) => Stream.periodic(const Duration(seconds: 2), ((count) => count))
);



class CounterDemoPage extends ConsumerWidget {

  const CounterDemoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {


    final streamData = ref.watch(streamProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Stream Provider"),
      ),

      body: streamData.when(
          data: (data) => Center(child: Text(data.toString(), style: TextStyle(fontSize: 16),),),
          error: (error, stackTrace) => Text(error.toString()),
          loading: ()=> Center(child: CircularProgressIndicator(),))
      );
  }

}