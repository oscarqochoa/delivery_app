import 'package:delivery_app/theming_and_state_management/domain/exception/auth_exception.dart';
import 'package:delivery_app/theming_and_state_management/domain/model/user.dart';
import 'package:delivery_app/theming_and_state_management/domain/repository/api_repository.dart';
import 'package:delivery_app/theming_and_state_management/domain/response/login_response.dart';
import 'package:delivery_app/theming_and_state_management/domain/request/login_request.dart';

class ApiRepositoryImpl extends ApiRepositoryInterface {
  @override
  Future<User> getUserFromToken(String token) async {
    if (token == 'AA111') {
      return User(
        name: 'Steve Jobs',
        username: 'stevejobs',
        image: '',
      );
    } else if (token == 'AA222') {
      return User(
        name: 'Elon Musk',
        username: 'elonmusk',
        image: '',
      );
    }

    return throw AuthException();
  }

  @override
  Future<LoginResponse> login(LoginRequest login) async {
    await Future.delayed(const Duration(seconds: 3));
    if (login.username == 'steve' && login.password == 'jobs') {
      return LoginResponse(
        token: 'AA111',
        user: User(
          name: 'Steve Jobs',
          username: 'stevejobs',
          image: '',
        ),
      );
    } else if (login.username == 'elon' && login.password == 'musk') {
      return LoginResponse(
        token: 'AA222',
        user: User(
          name: 'Elon Musk',
          username: 'elonmusk',
          image: '',
        ),
      );
    }

    throw AuthException();
  }

  @override
  Future<void> logout(String token) async {
    print('removing token from server');
    return;
  }
}
