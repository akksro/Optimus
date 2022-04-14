import './firebase_service.dart';

// All the lighweight method call goes here
class Repository {
  final FirebaseService _firebaseService = FirebaseService();

  loginUser() {
    _firebaseService.loginWithCredentials("username", "password");
  }
}
