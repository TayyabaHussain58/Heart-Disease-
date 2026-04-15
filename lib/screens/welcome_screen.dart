import 'package:flutter/material.dart';
import 'package:projectterminal/screens/signin_screen.dart'; // Import the SigninScreen

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  // Function to navigate to the Login screen
  void navigateToLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SigninScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Welcome text
          const Text(
            "Welcome",
            style: TextStyle(color: Colors.white, fontSize: 64),
          ),
          // Heart disease image
          Image.asset("assets/images/heart-disease.jpg"),
          SizedBox(
            height: 50,
          ),

          // Using ElevatedButton instead of GestureDetector
          ElevatedButton(
            onPressed: () {
              navigateToLogin(context);
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue, // Background color of the button
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40), // Padding inside the button
              textStyle: const TextStyle(color: Colors.white, fontSize: 24), // Text style inside the button
            ),
            child: const Text("Get Started"), // Button text
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
