// firebase_auth_service.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String? _verificationId;
  int? _resendToken;

  // Get current user
  User? get currentUser => _auth.currentUser;

  // Auth state stream
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  // Send OTP to phone number
  Future<AuthResult> sendOTP({
    required String phoneNumber,
    required Function(String verificationId) onCodeSent,
    required Function(String error) onError,
    Function(PhoneAuthCredential credential)? onAutoVerify,
  }) async {
    try {
      // Format phone number with country code
      String formattedPhone =
          phoneNumber.startsWith('+91') ? phoneNumber : '+91$phoneNumber';

      await _auth.verifyPhoneNumber(
        phoneNumber: formattedPhone,
        verificationCompleted: (PhoneAuthCredential credential) async {
          // Auto-verification (usually on Android)
          if (onAutoVerify != null) {
            onAutoVerify(credential);
          } else {
            await _signInWithCredential(credential);
          }
        },
        verificationFailed: (FirebaseAuthException e) {
          String errorMessage = _getErrorMessage(e);
          onError(errorMessage);
        },
        codeSent: (String verificationId, int? resendToken) {
          _verificationId = verificationId;
          _resendToken = resendToken;
          onCodeSent(verificationId);
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          _verificationId = verificationId;
        },
        timeout: const Duration(seconds: 60),
        forceResendingToken: _resendToken,
      );

      return AuthResult.success();
    } catch (e) {
      return AuthResult.error('Failed to send OTP: ${e.toString()}');
    }
  }

  // Verify OTP and sign in
  Future<AuthResult> verifyOTP(String otp) async {
    try {
      if (_verificationId == null) {
        return AuthResult.error(
          'Verification ID not found. Please resend OTP.',
        );
      }

      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: _verificationId!,
        smsCode: otp,
      );

      UserCredential userCredential = await _signInWithCredential(credential);

      return AuthResult.success(user: userCredential.user);
    } on FirebaseAuthException catch (e) {
      return AuthResult.error(_getErrorMessage(e));
    } catch (e) {
      return AuthResult.error('Verification failed: ${e.toString()}');
    }
  }

  // Sign in with credential
  Future<UserCredential> _signInWithCredential(
    PhoneAuthCredential credential,
  ) async {
    return await _auth.signInWithCredential(credential);
  }

  // Sign out
  Future<void> signOut() async {
    await _auth.signOut();
  }

  // Get error message from FirebaseAuthException
  String _getErrorMessage(FirebaseAuthException e) {
    switch (e.code) {
      case 'invalid-phone-number':
        return 'The phone number format is invalid.';
      case 'too-many-requests':
        return 'Too many requests. Please try again later.';
      case 'invalid-verification-code':
        return 'The verification code is invalid.';
      case 'invalid-verification-id':
        return 'The verification ID is invalid.';
      case 'quota-exceeded':
        return 'SMS quota exceeded. Please try again later.';
      case 'credential-already-in-use':
        return 'This phone number is already associated with another account.';
      case 'operation-not-allowed':
        return 'Phone authentication is not enabled.';
      default:
        return e.message ?? 'An unknown error occurred.';
    }
  }
}

// Auth result class
class AuthResult {
  final bool isSuccess;
  final String? error;
  final User? user;

  AuthResult._({required this.isSuccess, this.error, this.user});

  factory AuthResult.success({User? user}) =>
      AuthResult._(isSuccess: true, user: user);

  factory AuthResult.error(String error) =>
      AuthResult._(isSuccess: false, error: error);
}

// Riverpod providers
final firebaseAuthServiceProvider = Provider<FirebaseAuthService>((ref) {
  return FirebaseAuthService();
});

final authStateProvider = StreamProvider<User?>((ref) {
  final authService = ref.watch(firebaseAuthServiceProvider);
  return authService.authStateChanges;
});

// Auth state notifier
class AuthNotifier extends StateNotifier<AsyncValue<User?>> {
  final FirebaseAuthService _authService;

  AuthNotifier(this._authService) : super(const AsyncValue.loading()) {
    // Listen to auth state changes
    _authService.authStateChanges.listen((user) {
      state = AsyncValue.data(user);
    });
  }

  Future<AuthResult> sendOTP({
    required String phoneNumber,
    required Function(String verificationId) onCodeSent,
    required Function(String error) onError,
  }) async {
    return await _authService.sendOTP(
      phoneNumber: phoneNumber,
      onCodeSent: onCodeSent,
      onError: onError,
    );
  }

  Future<AuthResult> verifyOTP(String otp) async {
    return await _authService.verifyOTP(otp);
  }

  Future<void> signOut() async {
    await _authService.signOut();
  }
}

final authNotifierProvider =
    StateNotifierProvider<AuthNotifier, AsyncValue<User?>>((ref) {
      final authService = ref.watch(firebaseAuthServiceProvider);
      return AuthNotifier(authService);
    });
