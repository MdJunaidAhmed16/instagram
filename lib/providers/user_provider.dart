import 'package:flutter/material.dart';
import 'package:instagram/models/user.dart';
import 'package:instagram/resources/auth_method.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final Authmethods _authmethods = Authmethods();

  User get getUser => _user!;

  Future<void> refreshUser() async {
    User user = await _authmethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
