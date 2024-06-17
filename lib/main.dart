import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameProvider = Provider<String>((ref) {
  return 'Flutter Tech';
});


void main() {
  runApp(ProviderScope(child: MyApp()));
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePageTwo(),
    );
  }

}


///Example Of Extending ConsumerWidget
class HomePageOne extends ConsumerWidget {
  const HomePageOne({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final name = ref.watch(nameProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('RiverPod Provider Demo'),
        ),
        body: Center(child: Text(name),
        ),
      );
  }
}


///Read value using created Provider
class HomePageTwo extends StatelessWidget {

  const HomePageTwo({super.key});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: const Text('RiverPod Provider Demo'),
      ),
      body: Center(
        child: Consumer(builder: (context, ref, child){
        final name = ref.watch(nameProvider);
        return Text(name);
      }),
      ),
    );
  }
}
