# ❤️ Heart Disease Prediction App

A cross-platform Flutter application designed to assess heart disease risk by collecting user health data and leveraging AI-driven insights. The app integrates Firebase for secure authentication and persistent data storage, and utilizes OpenAI's language model to provide intelligent health guidance through a chatbot.

## 📱 Features

- 🔐 **User Authentication**
  - Secure sign-up and login using Firebase Authentication.
  - User information stored in Firebase Realtime Database.

- 🩺 **Heart Disease Risk Assessment**
  - Interactive questionnaire to collect health-related inputs.
  - Risk prediction based on user responses.

- 🤖 **AI-Powered Chatbot**
  - Integrated OpenAI model to provide health-related guidance and answer user queries.

- 🏋️ **Exercise Recommendations**
  - Displays guided exercises with GIF animations to promote heart health.

- 🏠 **User-Friendly Interface**
  - Beautiful gradient UI with intuitive navigation.
  - Personalized home screen with user details.

- ☁️ **Cloud Integration**
  - Firebase Realtime Database for persistent storage.
  - Firebase Authentication for secure user management.

## 🛠️ Tech Stack

| Technology | Description |
|-----------|-------------|
| **Flutter** | Cross-platform mobile app development |
| **Dart** | Programming language for Flutter |
| **Firebase Authentication** | Secure user login and registration |
| **Firebase Realtime Database** | Cloud-based data storage |
| **OpenAI API** | AI-powered chatbot for health assistance |
| **HTTP Package** | API communication |
| **Material Design** | Modern and responsive UI |

## 📸 Screenshots
<img width="323" height="682" alt="1" src="https://github.com/user-attachments/assets/35468057-df8c-4b89-84e8-fff271d1d15a" />
<img width="320" height="676" alt="2" src="https://github.com/user-attachments/assets/e9bcf750-08ad-492a-9c03-f58ab5e05791" />
<img width="345" height="728" alt="3" src="https://github.com/user-attachments/assets/4a7f0a9d-0e2c-45b5-8036-c7dc48cc1f1e" />
<img width="308" height="649" alt="4" src="https://github.com/user-attachments/assets/6976b170-91a9-477b-9502-d1b5728304c0" />
<img width="357" height="755" alt="5" src="https://github.com/user-attachments/assets/5beae60c-3570-4e39-9135-deece4598412" />
<img width="365" height="772" alt="6" src="https://github.com/user-attachments/assets/81022e96-1f2d-4f86-b742-d13a597a512e" />

Getting Started
Prerequisites
Flutter SDK installed
Firebase project configured
OpenAI API key
Installation

Clone the repository

git clone https://github.com/your-username/heart-disease-prediction.git
cd heart-disease-prediction

Install dependencies

flutter pub get
Configure Firebase
Add google-services.json (Android) and GoogleService-Info.plist (iOS).
Enable Email/Password Authentication.
Set up Realtime Database.
Add OpenAI API Key
Replace the API key in chatbot.dart.
⚠️ Important: Never expose API keys in public repositories. Use environment variables or secure storage instead.

Run the application

flutter run
🧠 How It Works
User Registration & Login
Users create an account or sign in using Firebase Authentication.
User details are stored in Firebase Realtime Database.
Health Questionnaire
Users answer a series of health-related questions.
A simple scoring mechanism estimates heart disease risk.
AI Chatbot
Users can interact with an OpenAI-powered chatbot for health guidance.
Exercise Guidance
The app provides exercise demonstrations using GIF animations to encourage a healthy lifestyle.
⚠️ Disclaimer

This application is intended for educational and informational purposes only and does not provide medical advice, diagnosis, or treatment. Always consult a qualified healthcare professional for medical concerns.

🔐 Security Best Practices
Do not commit API keys to the repository.
Use environment variables or Firebase Cloud Functions to securely handle API requests.
Enable Firebase security rules to protect user data.
📌 Future Enhancements
Integration with real medical datasets for improved prediction accuracy.
Visualization of user health trends.
Push notifications for health reminders.
Multi-language support.
Wearable device integration.
👩‍💻 Author

Tayyaba Hussain

🎓 AI/ML Engineer
📧 Email: your-email@example.com
🔗 LinkedIn: [https://www.linkedin.com/in/your-profile](https://www.linkedin.com/in/tayyaba-hussain-81961a261/?skipRedirect=true)
📄 License

This project is licensed under the MIT License - see the LICENSE file for details.
