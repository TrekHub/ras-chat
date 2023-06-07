import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
  AuthRepo(this._auth);
  final FirebaseAuth _auth;

  //method to sign in with email and password
  Future<User?> signInWithEmailandPassword(String email, password) async {
    try {
      final result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return result.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw AuthException('No user found for that email.');
      }
      if (e.code == 'wrong-password') {
        throw AuthException('Wrong password provided for that user.');
      }
      throw AuthException(e.message ?? 'Error');
    }
  }

  //TODO: check on how stream works in dart
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  //method to sign out
  Future<void> signOut() async {
    await _auth.signOut();
  }
}

class AuthException implements Exception {
  AuthException(this.message);
  final String message;

  @override
  String toString() {
    return message;
  }
}
