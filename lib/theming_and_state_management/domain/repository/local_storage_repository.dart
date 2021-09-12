import 'package:delivery_app/theming_and_state_management/domain/model/user.dart';

abstract class LocalRepositoryInterface {
  Future<String?> getToken();
  Future<String> saveToken(String token);
  Future<void> clearAllData();
  Future<User> saveUser(User user);
  Future<User> getUser();
  Future<void> saveDarkTheme(bool darkMode);
  Future<bool?> isDarkMode();
}
