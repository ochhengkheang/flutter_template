// before importing flutter_facebook_auth please follow the package documentation
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_template/utils/consts/durations.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthenticationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  /// Recommned: Combination of AuthStateChanges and UserChanges
  Stream<User?> buildUserChagesStream() {
    return _firebaseAuth.userChanges();
  }

  /// Recommned: Use buildUserChagesStream()
  /// Only listen to authState
  Stream<User?> buildauthStateChangesStream() {
    return _firebaseAuth.authStateChanges();
  }

  /// Recommned: Use buildUserChagesStream()
  /// Only listen to userChanges
  Stream<User?> builduserChangesStream() {
    return _firebaseAuth.userChanges();
  }

  Future<void> logInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth
        .signInWithEmailAndPassword(email: email, password: password)
        .timeout(const Duration(seconds: MyDurations.timeOut));
  }

  Future<UserCredential> signInWithCrendential({
    required AuthCredential credential,
  }) async {
    return await _firebaseAuth
        .signInWithCredential(credential)
        .timeout(const Duration(seconds: MyDurations.timeOut));
  }

  Future<UserCredential> registerWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    return await _firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password)
        .timeout(const Duration(seconds: MyDurations.timeOut));
  }

  /// --- Reset Password --- Email
  Future<void> sendPasswordResetEmail({
    required String email,
  }) async {
    await _firebaseAuth
        .sendPasswordResetEmail(email: email)
        .timeout(const Duration(seconds: MyDurations.timeOut));
  }

  Future<void> logout() async {
    await _firebaseAuth
        .signOut()
        .timeout(const Duration(seconds: MyDurations.timeOut));
  }

  Future<void> deleteAccount({
    required User user,
  }) async {
    await user.delete().timeout(const Duration(seconds: MyDurations.timeOut));
  }

  Future<void> verifyPhoneNumber({
    required String phoneNumber,
    int? forceResendingToken,
    required void Function(PhoneAuthCredential phoneAuthCredential)
        verificationCompleted,
    required void Function(FirebaseAuthException firebaseAuthException)
        verificationFailed,
    required void Function(String string, int?) codeSend,
  }) async {
    await _firebaseAuth
        .verifyPhoneNumber(
          forceResendingToken: forceResendingToken,
          phoneNumber: phoneNumber,
          timeout: const Duration(seconds: MyDurations.timeOut),
          verificationCompleted: verificationCompleted,
          verificationFailed: verificationFailed,
          codeSent: codeSend,
          codeAutoRetrievalTimeout: (verificationId) => {
            Exception(),
          },
        )
        .timeout(const Duration(seconds: MyDurations.timeOut));
  }

  PhoneAuthCredential submitPhoneNumberOpt({
    required String smsCode,
    required String verificationId,
  }) {
    return PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: smsCode);
  }

  Future<void> updateUsername({
    required User user,
    required String username,
  }) async {
    await _firebaseAuth.currentUser!
        .updateDisplayName(username)
        .timeout(const Duration(seconds: MyDurations.timeOut));
  }

  Future<void> updatePhoneNumber({
    required User user,
    required PhoneAuthCredential phoneAuthCredential,
  }) async {
    await user
        .updatePhoneNumber(phoneAuthCredential)
        .timeout(const Duration(seconds: MyDurations.timeOut));
  }

  Future<void> updatePhoto({
    required User user,
    String? photoUrl,
  }) async {
    await user
        .updatePhotoURL(photoUrl)
        .timeout(const Duration(seconds: MyDurations.timeOut));
  }

  /// --- SignIn and SignUp --- Google
  Future<OAuthCredential?> singInWithGoogle() async {
    GoogleSignInAccount? googleSignInAccount = await GoogleSignIn()
        .signIn()
        .timeout(const Duration(seconds: MyDurations.timeOut));
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication
              .timeout(const Duration(seconds: MyDurations.timeOut));
      GoogleSignIn().signOut();
      return GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
    }
    GoogleSignIn().signOut();
    return null;
  }

  /// --- SignIn and SignUp --- Github
  Future<UserCredential> signInWithGithub() async {
    GithubAuthProvider githubAuthProvider = GithubAuthProvider();
    return _firebaseAuth.signInWithProvider(githubAuthProvider);
  }

  /// --- SignIn and SignUp --- Facebook
  // Future<UserCredential> signInWithFacebook() async {
  //   final LoginResult loginResult = await FacebookAuth.instance.login(
  //       loginBehavior: LoginBehavior.nativeWithFallback,
  //       permissions: ['email', 'public_profile']);
  //   final OAuthCredential facebookAuthCredential =
  //       FacebookAuthProvider.credential(loginResult.accessToken!.token);
  //   FacebookAuth.instance.logOut();
  //   return _firebaseAuth.signInWithCredential(facebookAuthCredential);
  // }
}
