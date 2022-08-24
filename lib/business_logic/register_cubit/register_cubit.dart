import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:testapp/data/models/user.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());


  registerUser(UserModel user) async {
    emit(LoadingState());
    await Future.delayed(const Duration(milliseconds: 1000), () {});
    print(user.phone);
    print(user.password);
    emit(SuccessState());
  }
}
