import 'dart:convert';
import 'package:ekart/user_module/user_model.dart';
import 'package:http/http.dart';


class ApiService {
  String endPoint = "https://reqres.in/api/users?page=1";

  Future<List<UserModel>> getUser() async {

    Response response = await get(Uri.parse(endPoint));
    if(response.statusCode == 200){
      final List result = jsonDecode(response.body)['data'];
      var resultData =  result.map((item) => UserModel.fromJson(item)).toList();
      await Future.delayed(Duration(seconds: 2,));
      return resultData;
    } else {
      throw Exception(response.reasonPhrase);
    }

  }

}