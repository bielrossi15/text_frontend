import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:mup/objects/text_object.dart';

Future<List<MUPText>> fetchMUPText(String textType) async {
  final response = await http.get('http://192.168.0.17:8000/$textType/');
  var res = json.decode(response.body);
  List<MUPText> mupText = List();
  for(var r in res) {
    MUPText t = new MUPText(
      id: r['id'],
      title: r['title'],
      subtitle: r['subtitle'],
      autor: r['author'],
      text: r['text'],
    );
    mupText.add(t);
  }

  print(response.statusCode);

  if(response.statusCode == 200) {
    List<MUPText> mup = mupText.reversed.toList();
    return mup;
  }
  else {
    throw Exception('Failed to load text');
  }
}

