// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDJMAx9_HY9ksm1P4mYbNKEXwErV7LzHqE',
    appId: '1:943167440489:web:bbd167a413cae78ae184f8',
    messagingSenderId: '943167440489',
    projectId: 'flutter-instagram-7a42b',
    authDomain: 'flutter-instagram-7a42b.firebaseapp.com',
    storageBucket: 'flutter-instagram-7a42b.appspot.com',
    measurementId: 'G-E6SQWXFTX3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyASlYqdysKryEXf_CzsrBs3N58eaFdF40E',
    appId: '1:943167440489:android:28bdc13e939c0a03e184f8',
    messagingSenderId: '943167440489',
    projectId: 'flutter-instagram-7a42b',
    storageBucket: 'flutter-instagram-7a42b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD_AfMZUcBdoRZxPL7dG98iG6o_gSRfB44',
    appId: '1:943167440489:ios:ac36128daeb5cb3ce184f8',
    messagingSenderId: '943167440489',
    projectId: 'flutter-instagram-7a42b',
    storageBucket: 'flutter-instagram-7a42b.appspot.com',
    iosClientId: '943167440489-fbvqmcfoi0n89q0rc1dl4q4gvgjim0oi.apps.googleusercontent.com',
    iosBundleId: 'com.example.etcFlutterBoilerplate',
  );
}
