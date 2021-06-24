import 'package:chitchat/services/usermanagement.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'const.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Demo',
      theme: ThemeData(
        primaryColor: themeColor,
      ),
      home: Usermanagement().handleAuth(),
      debugShowCheckedModeBanner: false,
    );
  }
}
