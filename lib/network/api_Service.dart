import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'http/http_config.dart';

class ApiService {
  static Future<http.Response> LoginUser() async {
    final _completer = Completer<http.Response>();

    HttpConfig httpConfig = HttpConfig();
    Uri uri = httpConfig.getUri("", "");

    http.Response response = await http.post(uri, body: jsonEncode({}));

    _completer.complete(response);

    return _completer.future;
  }
}
