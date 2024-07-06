import 'package:ekart/family_modifier/person_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final nameProvider = Provider.family<String, Person>((ref, person){
  return 'Welcome, ${person.name} to ${person.address}';
});


void main(){
  runApp(const ProviderScope(child: FpApp()));
}


class FpApp extends StatelessWidget {
  const FpApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FpMain(),
    );
  }

}


class FpMain extends ConsumerStatefulWidget {
  const FpMain({super.key});

  @override
  _FpMainState createState() => _FpMainState();
}

class _FpMainState extends ConsumerState<FpMain> {


  @override
  Widget build(BuildContext context) {

    final name = ref.watch(nameProvider(Person(name: "James", address: "Melbourne")));

    return Scaffold(
      appBar: AppBar(title: const Text("Family Modifier"),),
      body: Column(
        children: [

          Text(name, style: TextStyle(fontSize: 20),),
        ],

      ),
    );
  }
}
