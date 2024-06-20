import 'package:flutter/material.dart';
import 'package:login_flutter/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'login.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
    },
  ));
}
