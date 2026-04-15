import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projectterminal/screens/signin_screen.dart';
import 'package:projectterminal/screens/signup_screen.dart'; // Import Signup screen
import 'package:projectterminal/screens/HomeScreen.dart';
import 'package:projectterminal/screens/welcome_screen.dart';
import 'package:projectterminal/screens/question_screen.dart';
import 'package:projectterminal/screens/Exercises.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heart Disease',
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/signin': (context) => const SigninScreen(),
        '/home': (context) => HomeScreen(), // Route for HomeScreen
        '/signup': (context) => const SignupScreen(),
        '/question': (context) => const QuestionScreen(),
        '/exercises': (context) => const ExercisePage(),
      }
    );
  }
}
