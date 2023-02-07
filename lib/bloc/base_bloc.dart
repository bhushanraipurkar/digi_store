import 'package:digi_store/network/http/api_repository.dart';
import 'package:rxdart/subjects.dart';

abstract class BaseBloc {
  
  ApiRepository apiRepository = ApiRepository();

  final PublishSubject<bool> isLoading = PublishSubject<bool>();
  Stream<bool> get isLoadingStream => isLoading.stream;

  void dispose();
}
