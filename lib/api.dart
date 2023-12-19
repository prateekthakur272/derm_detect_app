import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

const apiUrl = 'http://127.0.0.1:8000/api';

Future<String> login(String email, String password) async {
  final header = {'Content-Type': 'application/json'};
  final body = {"email": email, "password": password};
  final response = await http.post(Uri.parse('$apiUrl/auth/login/'),
      body: jsonEncode(body), headers: header);
  final data = jsonDecode(response.body);
  if (response.statusCode == 200) {
    return data['token'];
  }
  throw HttpException(data['detail']);
}

Future<String> register(String email, String password) async {
  final header = {'Content-Type': 'application/json'};
  final body = {"email": email, "password": password};
  final response = await http.post(Uri.parse('$apiUrl/auth/register/'),
      body: jsonEncode(body), headers: header);
  final data = jsonDecode(response.body);
  if (response.statusCode == 201) {
    return data.toString();
  }
  throw HttpException(data['detail']);
}

Future<Map<String, dynamic>> predict(List<int> bytes, String filename) async {
  FormData formData = FormData.fromMap({
    'file': MultipartFile.fromBytes(bytes,
        filename: filename, contentType: MediaType('image', 'png'))
  });
  final response = await Dio().post('$apiUrl/auth/predict', data: formData);
  if (response.statusCode == 200) {
    return response.data as Map<String, dynamic>;
  }
  throw const HttpException('bad request');
}
