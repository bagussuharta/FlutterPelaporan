import 'dart:convert';
import 'dart:html';

import 'package:http/http.dart';

class Post {
  String nama;
  String alamat;
  String noHp;
  String password;

  Post({this.nama, this.alamat, this.noHp, this.password});

  factory Post.createPost(Map<String, dynamic> object) {
    return Post(
        nama: object['nama'],
        alamat: object['alamat'],
        noHp: object['noHp'],
        password: object['password']);
  }

  static Future<Post> connectToAPI(String nama, String password) async {
    String apiURL = "https://reqres.in/api/users";

    var apiResult =
        await http.post(apiURL, Body: {"nama": nama, "password": password});

    var jsonObject = json.decode(apiResult.body);

    return Post.createPost(jsonObject);
  }
}
