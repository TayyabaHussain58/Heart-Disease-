import 'package:flutter/material.dart';

// Exercise data
class Exercise {
  final String name;
  final String gifUrl;

  Exercise({required this.name, required this.gifUrl});
}

class ExercisePage extends StatefulWidget {
  const ExercisePage({super.key});

  @override
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  // List of exercises
  final List<Exercise> exercises = [
    Exercise(
      name: 'Push Up',
      gifUrl: 'assets/exercises/pushup.gif',
    ),
    Exercise(
      name: 'Squats',
      gifUrl: 'assets/exercises/squats.gif',
    ),
    Exercise(
      name: 'Lunges',
      gifUrl: 'assets/exercises/lunges.gif',
    ),
  ];

  int currentIndex = 0;

  // Function to go to the next exercise
  void nextExercise() {
    setState(() {
      if (currentIndex < exercises.length - 1) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Exercise Page")),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Exercise card
            Card(
              color: Colors.black,
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Display the exercise name
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      exercises[currentIndex].name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  // Display the exercise GIF
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      exercises[currentIndex].gifUrl,
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            // Next button
            ElevatedButton(
              onPressed: nextExercise,
              child: const Text('Next Exercise'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 80,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

