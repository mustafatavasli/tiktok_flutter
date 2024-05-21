import 'package:firebase_auth/firebase_auth.dart';

class FirebaseService {
  init() {
    signInAnonymously();
  }

  signInAnonymously() async {
    await FirebaseAuth.instance.signInAnonymously();
  }
}
