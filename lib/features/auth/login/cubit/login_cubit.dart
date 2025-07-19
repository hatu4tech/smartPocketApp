// This Cubit class manages the login logic using Firebase Authentication.
// Cubit is part of the Bloc library, used here to handle simple login-related
// state changes
// such as loading, success, error, and resetting the login form.

// ─────────────────────────────────────────────────────────────────────────────
// LoginCubit is responsible for:
// - Starting in an initial state (LoginInitial)
// - Emitting a loading state when login starts
// - Attempting to sign in with FirebaseAuth using email & password
// - Emitting a success state if login is successful
// - Emitting an error state with a human-readable message if login fails
// - Resetting the state back to LoginInitial when needed
// ─────────────────────────────────────────────────────────────────────────────

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  // Reference to FirebaseAuth for performing login
  final FirebaseAuth _firebaseAuth;

  LoginCubit({FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        super(LoginInitial());  // Start with initial login state

  // Method to handle the login process
  Future<void> login({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());  // Emit loading state to show spinner or disable button

    try {
      // Try to sign in with FirebaseAuth
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );

      emit(LoginSuccess());  // If successful, emit success state

    } on FirebaseAuthException catch (e) {
      // Catch common Firebase errors and map to user-friendly messages
      String errorMessage;
      switch (e.code) {
        case 'user-not-found':
          errorMessage = 'No user found with this email.';
          break;
        case 'wrong-password':
          errorMessage = 'Incorrect password.';
          break;
        case 'invalid-email':
          errorMessage = 'Invalid email address.';
          break;
        case 'user-disabled':
          errorMessage = 'This account has been disabled.';
          break;
        case 'too-many-requests':
          errorMessage = 'Too many failed attempts. Please try again later.';
          break;
        default:
          errorMessage = 'Login failed. Please try again.';
      }
      emit(LoginError(errorMessage));   // Emit error state with specific message
    } catch (e) {
      // Catch any other unexpected errors
      emit(LoginError('An unexpected error occurred. Please try again.'));
    }
  }

  // Resets the cubit back to its initial state, for example,
  // after leaving the page
  void resetState() {
    emit(LoginInitial());
  }
}
