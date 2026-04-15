import 'package:flutter/material.dart';
import 'question_screen.dart';
import 'settings.dart';
import 'Chatbot.dart';
import 'Exercises.dart'; // Import the ExercisePage

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, String>? ?? {};
    final username = args['username'] ?? 'User';
    final email = args['email'] ?? 'No Email';

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(username), // Display the username
              accountEmail: Text(email),   // Display the email
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Colors.blue),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context); // Close the drawer and stay on HomeScreen
              },
            ),
            ListTile(
              leading: const Icon(Icons.healing),
              title: const Text('Setting'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.chat),
              title: const Text('ChatBot'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatBotApp(),
                  ),
                );
              },
            ),
            // New Exercise option
            ListTile(
              leading: const Icon(Icons.fitness_center),
              title: const Text('Exercise'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExercisePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF0F2027), // Dark Blue
              Color(0xFF203A43), // Teal
              Color(0xFF2C5364), // Light Blue
              Color(0xFF59C173), // Green
              Color(0xFFA17FE0), // Purple
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1, 0.4, 0.6, 0.8, 1.0], // Gradient stops for smooth aurora effect
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Image(
                  image: AssetImage('assets/images/images.jpeg'),
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Keep Your Heart Healthy!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'A healthy heart is essential for overall well-being. '
                    'It pumps blood throughout the body, delivering oxygen and '
                    'nutrients to tissues and removing waste products. '
                    'Maintaining a healthy heart can help prevent heart disease, '
                    'stroke, and other cardiovascular problems.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Tips to Maintain a Healthy Heart:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                '- Eat a balanced diet with plenty of fruits and vegetables.\n'
                    '- Stay physically active with regular exercise.\n'
                    '- Avoid smoking and limit alcohol consumption.\n'
                    '- Manage stress and maintain a healthy weight.\n'
                    '- Monitor blood pressure and cholesterol levels regularly.\n',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuestionScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                    textStyle: const TextStyle(fontSize: 18),
                    elevation: 8, // Controls the shadow depth
                    shadowColor: Colors.black.withOpacity(0.5),
                  ),
                  child: const Text('Check for Heart Disease'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
