import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/app.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
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

  // return runApp(MaterialApp(
  //   home: Scaffold(
  //     body: SingleChildScrollView(
  //       child: SelectableHtml(
  //         data: htmlData,
  //         style: {
  //           "table": Style(
  //             backgroundColor: const Color.fromARGB(0x50, 0xee, 0xee, 0xee),
  //           ),
  //           "tr": Style(
  //             border: const Border(bottom: BorderSide(color: Colors.grey)),
  //           ),
  //           "th": Style(
  //             padding: const EdgeInsets.all(6),
  //             backgroundColor: Colors.grey,
  //           ),
  //           "td": Style(
  //             padding: const EdgeInsets.all(6),
  //             alignment: Alignment.topLeft,
  //           ),
  //           'h5': Style(maxLines: 2, textOverflow: TextOverflow.ellipsis),
  //           'h1': Style(maxLines: 2, textOverflow: TextOverflow.ellipsis),
  //           'h2': Style(maxLines: 2, textOverflow: TextOverflow.ellipsis),
  //           'h3': Style(maxLines: 2, textOverflow: TextOverflow.ellipsis),
  //           'h4': Style(maxLines: 2, textOverflow: TextOverflow.ellipsis),
  //         },
  //       ),
  //     ),
  //   ),
  // ));
}
