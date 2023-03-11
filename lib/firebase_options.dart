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
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC1RukDdzVdhA11J3EJLICIPSOFkij_N7k',
    appId: '1:509826767525:web:0204810e41bc9b2b7ccb4c',
    messagingSenderId: '509826767525',
    projectId: 'organizers-app',
    authDomain: 'organizers-app.firebaseapp.com',
    storageBucket: 'organizers-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyArYkcW5apd9CvryjwhGjhOqr4rC01CN0M',
    appId: '1:509826767525:android:ef26dafe848aa75f7ccb4c',
    messagingSenderId: '509826767525',
    projectId: 'organizers-app',
    storageBucket: 'organizers-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAfWBGzY6VZSn_v5Tr-O5H7RewdE3ikVZE',
    appId: '1:509826767525:ios:1ff6fdf7363704047ccb4c',
    messagingSenderId: '509826767525',
    projectId: 'organizers-app',
    storageBucket: 'organizers-app.appspot.com',
    iosClientId: '509826767525-pjoasfkkiajiobmnehb7r3tmr1gq6ito.apps.googleusercontent.com',
    iosBundleId: 'com.example.cseOrganizersApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAfWBGzY6VZSn_v5Tr-O5H7RewdE3ikVZE',
    appId: '1:509826767525:ios:1ff6fdf7363704047ccb4c',
    messagingSenderId: '509826767525',
    projectId: 'organizers-app',
    storageBucket: 'organizers-app.appspot.com',
    iosClientId: '509826767525-pjoasfkkiajiobmnehb7r3tmr1gq6ito.apps.googleusercontent.com',
    iosBundleId: 'com.example.cseOrganizersApp',
  );
}