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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCx9xLr7d6fPtPVnrPCpVDNq-ccL34EkXo',
    appId: '1:416337601417:web:f56b44d99f1fa403bbf758',
    messagingSenderId: '416337601417',
    projectId: 'day-task-app-436dc',
    authDomain: 'day-task-app-436dc.firebaseapp.com',
    storageBucket: 'day-task-app-436dc.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAQrZs724ANvIhIOAVaINjQWyq051PURbM',
    appId: '1:416337601417:android:aa94eb6545103bb5bbf758',
    messagingSenderId: '416337601417',
    projectId: 'day-task-app-436dc',
    storageBucket: 'day-task-app-436dc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDyyOhXcIK0Ua8efIz6Ip7KtKY5XYqg3Ps',
    appId: '1:416337601417:ios:ef9508340ff7853ebbf758',
    messagingSenderId: '416337601417',
    projectId: 'day-task-app-436dc',
    storageBucket: 'day-task-app-436dc.appspot.com',
    iosBundleId: 'com.mosaadibrahim.dayTaskApp',
  );
}
