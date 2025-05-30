// user_store.dart
import 'package:flutter/foundation.dart';

class UserStore {
  // Singleton pattern to have a single instance across the app
  static final UserStore _instance = UserStore._internal();

  // Factory constructor returns the same instance every time
  factory UserStore() {
    return _instance;
  }

  // Private named constructor
  UserStore._internal();

  // Private map to store users: email -> password
  final Map<String, String> _users = {};

  /// Registers a user with given email and password.
  /// Overwrites if email already exists.
  void registerUser(String email, String password) {
    _users[email] = password;
    if (kDebugMode) {
      print('Registered user: $email');
    }
  }

  /// Checks if a user with the given email exists.
  bool userExists(String email) {
    return _users.containsKey(email);
  }

  /// Validates user credentials, returns true if email and password match.
  bool validateUser(String email, String password) {
    if (!_users.containsKey(email)) return false;
    return _users[email] == password;
  }
}
