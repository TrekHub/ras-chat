import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ras_chat/repositories/auth_repo.dart';

final authProvider = Provider<AuthRepo>((ref) {
  return AuthRepo(FirebaseAuth.instance);
});


