import 'package:ekart/stream_provider/rv_stream_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'auto_disposable/home_page.dart';
import 'auto_disposable/counter_page.dart';



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
