import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../notifier_provider/rv_state_notifier_provider.dart';


void main() {
  runApp(ProviderScope(child: MyApp()));
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: _router,
    );
  }

}

final GoRouter _router = GoRouter(routes: [
  GoRoute(path: "/", builder: (context, state) => const HomePage()),
  GoRoute(path: "/counter", builder: (context, state) => const CounterPage())
]);


class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title:  const Text("Home"),),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.push("/counter");
    },
          child: const Text("Counter"),
      ),
    ));
  }

}
