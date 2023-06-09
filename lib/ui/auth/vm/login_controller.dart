import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ras_chat/providers/auth_provider.dart';
import 'package:ras_chat/ui/auth/vm/login_state.dart';

class LoginController extends StateNotifier<LoginState> {
  LoginController(this.ref) : super(LoginStateInitial());

  final Ref ref;

  void signInWithEmailAndPassword(String email, String password) async {
    state = LoginStateLoading();

    try {
      state = LoginStateSuccess();
      await ref.read(authProvider).signInWithEmailandPassword(email, password);
    } catch (e) {
      state = LoginStateFailure(e.toString());
    }
  }
}

final loginControllerProvider =
    StateNotifierProvider<LoginController, LoginState>(
        (ref) => LoginController(ref));
