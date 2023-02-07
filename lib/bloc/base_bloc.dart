import 'package:rxdart/subjects.dart';

abstract class BaseBloc {
  final PublishSubject<bool> isLoading = PublishSubject<bool>();
}
