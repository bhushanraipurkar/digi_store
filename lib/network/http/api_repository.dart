import 'package:digi_store/network/api_Service.dart';
import 'package:http/http.dart' as http;

class ApiRepository {

Future<http.Response> LoginUser() => ApiService.LoginUser();

}