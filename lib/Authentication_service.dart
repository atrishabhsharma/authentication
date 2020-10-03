import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;
  AuthenticationService(this._firebaseAuth);

  /// going to listen in state change widget tree (its a getter)
  ///
  Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> SignOut() async {
    await _firebaseAuth.signOut();
  }

  /// SignIn
  Future<String> signIn({String email, String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return 'Signed In';
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  /// SignUp
  Future<String> signUp({String email, String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return 'Signed up';
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
