import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/app.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/web_observer.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = WebObserver();
  //? Error in firebase?
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: 'AIzaSyBGOVRyABKzyN1sK8bfw95e1YaCY4aQrCw',
      appId: '1:837553242957:web:5d207458020ebd1bedad04',
      messagingSenderId: '837553242957',
      projectId: 'monsklab-courses',
      authDomain: 'monsklab-courses.firebaseapp.com',
      storageBucket: 'monsklab-courses.appspot.com',
      measurementId: 'G-T4QMR5W0FB',
    ));
  } else {
    await Firebase.initializeApp();
  }
  runApp(App(coursesRepository: CoursesRepository()));
}
