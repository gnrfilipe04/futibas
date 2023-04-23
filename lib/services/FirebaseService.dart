import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:futibas/firebase_options.dart';

class FirebaseService {

  Future<void> initializeDefault() async {
    WidgetsFlutterBinding.ensureInitialized();

    FirebaseApp app = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    print('Initialized default app $app');
  }

}