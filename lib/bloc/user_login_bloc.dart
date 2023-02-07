import 'package:digi_store/bloc/base_bloc.dart';
import 'package:digi_store/utils/utils_export.dart';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;

class UserLoginBloc extends BaseBloc{

  final PublishSubject<bool> _isUserLogined = PublishSubject<bool>();
  Stream<bool> get userLoginStatusStream => _isUserLogined.stream;

  void userLogin() async{
    try{
      isLoading.sink.add(true);
       http.Response response = await apiRepository.LoginUser();

       if(response.statusCode==200){
        
       }

    }catch(e, stack){
      print(e);
      print(stack);
      _isUserLogined.sink.addError(AppStrings.someErrorOccuredText);
    }finally{
      isLoading.sink.add(false);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}

UserLoginBloc userLoginBloc = UserLoginBloc();
