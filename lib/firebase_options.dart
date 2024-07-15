// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC-GxN1hRW65Qg6mH4WUA7mNAFv4vUhI8o',
    appId: '1:851095285348:web:bcb42f6d58ed11e5db3971',
    messagingSenderId: '851095285348',
    projectId: 'warungsantri-29c7c',
    authDomain: 'warungsantri-29c7c.firebaseapp.com',
    storageBucket: 'warungsantri-29c7c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB3rVfnfb2tqwRTSDwOrh8Ifl-0uF_cs7o',
    appId: '1:851095285348:android:f61f8f6009d0b419db3971',
    messagingSenderId: '851095285348',
    projectId: 'warungsantri-29c7c',
    storageBucket: 'warungsantri-29c7c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB6bz9pTpekGImWtX58AqnPzwJIZhrJf1U',
    appId: '1:851095285348:ios:ca7551fd31ea7a20db3971',
    messagingSenderId: '851095285348',
    projectId: 'warungsantri-29c7c',
    storageBucket: 'warungsantri-29c7c.appspot.com',
    iosBundleId: 'com.mahatech.warungSantri',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB6bz9pTpekGImWtX58AqnPzwJIZhrJf1U',
    appId: '1:851095285348:ios:ca7551fd31ea7a20db3971',
    messagingSenderId: '851095285348',
    projectId: 'warungsantri-29c7c',
    storageBucket: 'warungsantri-29c7c.appspot.com',
    iosBundleId: 'com.mahatech.warungSantri',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC-GxN1hRW65Qg6mH4WUA7mNAFv4vUhI8o',
    appId: '1:851095285348:web:ed97051ea17800eddb3971',
    messagingSenderId: '851095285348',
    projectId: 'warungsantri-29c7c',
    authDomain: 'warungsantri-29c7c.firebaseapp.com',
    storageBucket: 'warungsantri-29c7c.appspot.com',
  );
}