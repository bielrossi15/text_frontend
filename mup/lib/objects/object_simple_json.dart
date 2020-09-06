import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:mup/objects/text_object.dart';

import 'text_object.dart';

Future<MUPText> fetchMUPText(String textType, int id) async {
  final response = await http.get('http://192.168.0.17:8000/$textType/$id');

  if(response.statusCode == 200) {
    return MUPText.fromJson(json.decode(response.body));
  }
  else {
    throw Exception('Failed to load text');
  }
}

