import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Rxn<User> firebaseUser = Rxn<User>();

  @override
  void onInit() {
    firebaseUser.bindStream(_auth.authStateChanges());
    super.onInit();
  }

  void register(String email, String password) async {
    await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    Get.offAllNamed('/home');
  }

  void login(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    Get.offAllNamed('/home');
  }

  void signOut() async {
    await _auth.signOut();
    Get.offAllNamed('/login');
  }
}
