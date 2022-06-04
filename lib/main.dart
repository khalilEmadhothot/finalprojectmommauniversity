import 'package:finalprojectmommauniversity/screens/launch/launch_screen.dart';
import 'package:finalprojectmommauniversity/screens/launch/page_view.dart';
import 'package:finalprojectmommauniversity/screens/profial.dart';
import 'package:finalprojectmommauniversity/screens/settings.dart';
import 'package:finalprojectmommauniversity/screens/tabview.dart';
import 'package:finalprojectmommauniversity/screens/view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'auth/forget_password_screen.dart';
import 'auth/sign In.dart';
import 'auth/signup.dart';








void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/LaunchScreen',
      routes: {
        '/LaunchScreen':(context)=>LaunchScreen(),
        '/Page_View':(context)=>Page_View(),
        '/Sign_Up':(context)=>Sign_Up(),
        '/SingIN':(context)=>SingIN(),
        '/ForgetPasswordScreen':(context)=>ForgetPasswordScreen(),
        '/View':(context)=>View(),
        '/Settings':(context)=>Settings(),
        '/TabView':(context)=>TabView(),
        '/Profial':(context)=>Profial(),

      },
    );
  }
}
