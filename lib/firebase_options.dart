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
    apiKey: 'AIzaSyDFV3I0I9mlRCHAZnKW-XjyIP-VMgsvZas',
    appId: '1:649415723007:web:712f6e40bf6a12dd3809ca',
    messagingSenderId: '649415723007',
    projectId: 'test-304d0',
    authDomain: 'test-304d0.firebaseapp.com',
    storageBucket: 'test-304d0.appspot.com',
    measurementId: 'G-FW5GEWJFV6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyASYdD04VGCSdGZAbvmpD_Cya4my4ETV48',
    appId: '1:649415723007:android:81afeb63006a0a6a3809ca',
    messagingSenderId: '649415723007',
    projectId: 'test-304d0',
    storageBucket: 'test-304d0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBgklqp7pusrMat-m_mtPV2qG-y1fNL6mg',
    appId: '1:649415723007:ios:e45fdacdb2792df13809ca',
    messagingSenderId: '649415723007',
    projectId: 'test-304d0',
    storageBucket: 'test-304d0.appspot.com',
    iosBundleId: 'com.example.newsApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBgklqp7pusrMat-m_mtPV2qG-y1fNL6mg',
    appId: '1:649415723007:ios:e45fdacdb2792df13809ca',
    messagingSenderId: '649415723007',
    projectId: 'test-304d0',
    storageBucket: 'test-304d0.appspot.com',
    iosBundleId: 'com.example.newsApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDFV3I0I9mlRCHAZnKW-XjyIP-VMgsvZas',
    appId: '1:649415723007:web:0168cb724b31dc563809ca',
    messagingSenderId: '649415723007',
    projectId: 'test-304d0',
    authDomain: 'test-304d0.firebaseapp.com',
    storageBucket: 'test-304d0.appspot.com',
    measurementId: 'G-0G8LT2KXNX',
  );
}