import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthStateLogout()) {
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    on<AuthEventLogin>((event, emit) async {
      try {
        emit(AuthStateLoading());

        // Sign in with email and password
        await auth.signInWithEmailAndPassword(
          email: event.email,
          password: event.pass,
        );

        // Retrieve the user ID
        final userId = auth.currentUser?.uid;

        if (userId != null) {
          // Get the user's role from the 'users' collection
          final userQuery = await firestore
              .collection('users')
              .where("userId", isEqualTo: userId)
              .get();

          if (userQuery.docs.isNotEmpty) {
            final userData = userQuery.docs.first.data();

            if (userData.containsKey('role')) {
              final role = userData['role'];

              // Save the role in SharedPreferences
              final prefs = await SharedPreferences.getInstance();
              await prefs.setString('userRole', role);

              emit(AuthStateLogin());
            } else {
              emit(AuthStateError('User role not found.'));
            }
          } else {
            emit(AuthStateError('User not found.'));
          }
        } else {
          emit(AuthStateError('User ID not found.'));
        }
      } on FirebaseAuthException catch (e) {
        emit(AuthStateError(e.message.toString()));
      } catch (e) {
        emit(AuthStateError(e.toString()));
      }
    });
  }
}
