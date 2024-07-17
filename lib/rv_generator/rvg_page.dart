import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'rvg_page.g.dart';

//final nameProvider = Provider<String>((ref)=> "Jack");

@Riverpod(keepAlive: true)
String name(NameRef ref){
  return "Jane";
}

class RVGHomePage extends ConsumerWidget {
  const RVGHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final name = ref.watch(nameProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Riverpod Generator"),),
      body: Center(
        child: Text(name),
      ),
    );
  }
}
