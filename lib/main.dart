import 'package:firebase_app/auth_controller.dart';
import 'package:firebase_app/login_page.dart';
import 'package:firebase_app/signup_page.dart';
import 'package:firebase_app/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

bool shouldUseFirebaseEmulator = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // Get.put<AuthController>(AuthController());
  // await GetStorage.init();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyAgUhHU8wSJgO5MVNy95tMT07NEjzMOfz0',
      appId: '1:448618578101:web:0b650370bb29e29cac3efc',
      messagingSenderId: '448618578101',
      projectId: 'react-native-firebase-testing',
      authDomain: 'react-native-firebase-testing.firebaseapp.com',
      databaseURL: 'https://react-native-firebase-testing.firebaseio.com',
      storageBucket: 'react-native-firebase-testing.appspot.com',
      measurementId: 'G-F79DJ0VFGS',
    ),
  ).then((value) => Get.put(AuthController()));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
