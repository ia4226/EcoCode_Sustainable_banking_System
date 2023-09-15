import 'package:local_auth/local_auth.dart';
// ignore: depend_on_referenced_packages
import 'package:local_auth_android/local_auth_android.dart';
// ignore: depend_on_referenced_packages
import 'package:local_auth_ios/local_auth_ios.dart';

class LocalAuth{
  static final _auth = LocalAuthentication();

  static Future<bool>_canAuthenticate() async =>
  await _auth.canCheckBiometrics || await _auth.isDeviceSupported();

  static Future<bool> authenticate() async {
    try{
      if(!await _canAuthenticate()) return false;

      return await _auth.authenticate(
        authMessages: const [
          AndroidAuthMessages(
            signInTitle: "Sign In",
            cancelButton: "No Thanks",
          ),
          IOSAuthMessages(
            cancelButton: "No Thanks",
          ),
        ],
        localizedReason: 'Use Face ID to Authenticate',
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );
    }catch (e) {
      debugPrint('error $e');
      return false;
    }
  }
  
  static void debugPrint(String s) {}

  static getBiometrics() {}

  static hasBiometrics() {} 
}

