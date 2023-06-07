import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
  AuthRepo(this._auth);
  final FirebaseAuth _auth;

  //method to sign in with email and password

  Future<User?> signInWithEmailandPassword(String email, password) async {
    final result = await _auth.signInWithEmailAndPassword(
        email: email, password: password);

    return result.user;
  }
}
