import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  String result="";
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  // Store user's responses
  final List<String> _userResponses = [];

  final List<Map<String, dynamic>> questions = [
    {
      'title': 'Gender',
      'description':
      'Biological sex refers to the physiological characteristics that define males and females.',
      'options': ['Male', 'Female']
    },
    {
      'title': 'Cough',
      'description':
      'Do you experience a persistent cough? A cough can indicate airway irritation or other conditions.',
      'options': ['Yes', 'No']
    },
    {
      'title': 'Age',
      'description':
      'How old are you? Age is a significant factor in health assessments.',
      'options': ['Below 30', '30-50', 'Above 50']
    },
    {
      'title': 'Chest Pain',
      'description':
      'Have you experienced chest pain recently? This could be a symptom of various conditions.',
      'options': ['Yes', 'No']
    },
    {
      'title': 'Smoking',
      'description': 'Do you smoke? Smoking can impact your cardiovascular health.',
      'options': ['Yes', 'No']
    },
    {
      'title': 'Physical Activity',
      'description':
      'How often do you engage in physical activity? Regular exercise is crucial for heart health.',
      'options': ['Daily', 'Occasionally', 'Never']
    },
    {
      'title': 'Dietary Habits',
      'description': 'Do you follow a balanced diet, including fruits and vegetables?',
      'options': ['Yes', 'No']
    },
    {
      'title': 'Fever',
      'description': 'Do you have a fever? A fever could indicate an infection or inflammation.',
      'options': ['Yes', 'No']
    },
    {
      'title': 'Shortness of Breath',
      'description':
      'Do you experience shortness of breath, especially during physical activities or at rest?',
      'options': ['Yes', 'No']
    },
    {
      'title': 'Swelling in Feet',
      'description':
      'Have you noticed swelling in your feet or ankles? This could be a sign of heart-related issues.',
      'options': ['Yes', 'No']
    },
    {
      'title': 'Fatigue',
      'description':
      'Do you feel unusually tired or fatigued, even after getting enough rest?',
      'options': ['Yes', 'No']
    },
    {
      'title': 'Dizziness',
      'description':
      'Have you experienced dizziness or lightheadedness recently? This can be related to heart conditions.',
      'options': ['Yes', 'No']
    },
    {
      'title': 'Heart Palpitations',
      'description':
      'Do you experience irregular heartbeats or palpitations? This may indicate heart disease.',
      'options': ['Yes', 'No']
    },
  ];

  void _handleAnswer(String answer) {
    _userResponses.add(answer);
  }

  void _nextQuestion() {
    if (_currentIndex < questions.length - 1) {
      setState(() {
        _currentIndex++;
      });
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      // Handle the end of the questions and navigate or show results
      _showResults();
    }
  }

  void _previousQuestion() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
      });
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  void _showResults() {
    int score = 0;

        for (int i = 0; i < _userResponses.length; i++) {
      // Example: If the answer is 'Yes' to certain health-related questions, add points
      if (_userResponses[i] == 'Yes') {
        score++;
      }

      if(score>=7){
        result="you might have heart disease , go to dr.tayyaba and dr.aiman please";
      }else{
        result="you can chill";
      }
    }

    // Navigate to a new screen or show the results in a dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Results"),
          content: Text("$result"),

          actions: [
            TextButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
                // Optionally, navigate to a new screen
                // Navigator.pushNamed(context, '/results');
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Heart Disease Prediction'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: PageView.builder(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: questions.length,
        itemBuilder: (context, index) {
          return QuestionCard(
            title: questions[index]['title'],
            description: questions[index]['description'],
            options: questions[index]['options'],
            onNext: () {
              // Store the selected answer before moving to next question
              _handleAnswer(questions[index]['options'][0]); // This should be dynamic based on selected option
              _nextQuestion();
            },
            onPrevious: _previousQuestion,
          );
        },
      ),
    );
  }
}

class QuestionCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> options;
  final VoidCallback onNext;
  final VoidCallback onPrevious;

  const QuestionCard({
    super.key,
    required this.title,
    required this.description,
    required this.options,
    required this.onNext,
    required this.onPrevious,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.blue, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: options
                .map((option) => ElevatedButton(
              onPressed: () {
                // Call onNext with the selected option
                onNext();
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                backgroundColor: option == 'Male'
                    ? Colors.blue
                    : option == 'Female'
                    ? Colors.pink
                    : Colors.green,
              ),
              child: Text(
                option,
                style: const TextStyle(color: Colors.white),
              ),
            ))
                .toList(),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: onPrevious,
            child: const Text("Submit"),
          ),
        ],
      ),
    );
  }
}
