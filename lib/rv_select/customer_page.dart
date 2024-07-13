import 'package:ekart/rv_select/customer_model.dart';
import 'package:ekart/rv_select/customer_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final customerProvider = StateNotifierProvider<CustomerNotifier, CustomerModel>((ref)=>
    CustomerNotifier(const CustomerModel(name: "Jay", address: "India")));



class CustomerPage extends ConsumerWidget {

  const CustomerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    print("build method called");
    final customer = ref.watch(customerProvider.select((value) => value.name));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Riverpod"),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextField(
              onSubmitted: (value) => ref.read(customerProvider.notifier).updateName(value),
            ),

            const SizedBox(height: 10),

            TextField(
              onSubmitted: (value) => ref.read(customerProvider.notifier).updateAddress(value),
            ),

            const SizedBox(height: 10),

            Text(customer),

          ],
        ),
      )
    );
  }
}
