import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final nameProvider = Provider<String>((ref) {
  return 'Flutter Tech';
});

//------------------------------------------------------------------------------//
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

//-----------------------------------------------------------------------------//
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

//-----------------------------------------------------------------------------//

///RiverPod Stateful Widget Example
class RVWidget extends ConsumerStatefulWidget {
  const RVWidget({super.key});

  @override
  _RVWidgetState createState() => _RVWidgetState();
}

class _RVWidgetState extends ConsumerState<RVWidget> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final name = ref.read(nameProvider);
    print("RV init $name");
  }

  @override
  Widget build(BuildContext context) {

    final name = ref.watch(nameProvider);

    return Scaffold(
        appBar: AppBar(title: const Text('RiverPod'),),
        body: Center(child: Text(name)));
  }
}