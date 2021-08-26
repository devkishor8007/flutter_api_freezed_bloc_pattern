import 'dart:convert';

import 'package:flutter_api_freezed/presentation/data/model/user.dart';
import 'package:http/http.dart' as http;

abstract class UserRepository {
  Future<List<User>> getUser();
}

class UserRepositoryImplement extends UserRepository {
  @override
  Future<List<User>> getUser() async {
    var res =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    if (res.statusCode == 200) {
      final data = json.decode(res.body) as List;
      return List<User>.from(data
          .map((json) => User.fromJson(json as Map<String, dynamic>))
          .toList());
    }
    throw Exception('Failed');
  }
}
