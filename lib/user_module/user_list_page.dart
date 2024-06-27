import 'package:ekart/user_module/service/api_service.dart';
import 'package:ekart/user_module/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final apiProvider = Provider<ApiService>(
    (ref) => ApiService(),
);

final userDataProvider = FutureProvider<List<UserModel>>(
    (ref) => ref.read(apiProvider).getUser(),
);


class UserListPage extends ConsumerWidget {

  const UserListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final userData = ref.watch(userDataProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: userData.when(data: (data){

        return ListView.builder(itemBuilder: (context, index){

          var item = data[index];
          var firstName = item.firstName;
          var lastName = item.lastName;
          var email = item.email;
          var imgUrl = item.avatar;

          return ListTile(
              title: Text("$firstName $lastName"),
              subtitle: Text(email),
              leading: CircleAvatar(child: Image.network(imgUrl),),
              );
        },

          itemCount: data.length,
        );
      },

      error: ((err, errStack) => Text(err.toString())),
      loading:(() => const Center(child: CircularProgressIndicator()) )
      ),
    );
  }



}


