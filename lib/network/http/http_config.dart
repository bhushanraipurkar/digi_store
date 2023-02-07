import 'package:digi_store/utils/utilities.dart';

class HttpConfig {
  Uri getUri(String path, String method) {
    return Uri.parse(Utilities.getApiUrl() + path + method);
  }
}
