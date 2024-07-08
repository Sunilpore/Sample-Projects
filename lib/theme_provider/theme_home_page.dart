import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final themeProvider  = StateProvider<bool>((ref) => true);


void main(){
  runApp(const ProviderScope(child: ThemeApp()));
}




class ThemeApp extends ConsumerWidget {
  const ThemeApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final isLightTheme = ref.watch(themeProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: "Theme",
      theme: isLightTheme?ThemeData.light():ThemeData.dark(),
      home: const ThemeSwitchWidget(),
    );
  }

}

class ThemeSwitchWidget extends ConsumerWidget {
  const ThemeSwitchWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final isLightTheme = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Theme'),),
      body: Center(
        child: Switch(value: isLightTheme,
        onChanged: (value) => ref.read(themeProvider.notifier).state = value),
      ),
    );
  }
}
