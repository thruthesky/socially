import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SociallyFirebaseUser {
  SociallyFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

SociallyFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SociallyFirebaseUser> sociallyFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<SociallyFirebaseUser>(
            (user) => currentUser = SociallyFirebaseUser(user));
