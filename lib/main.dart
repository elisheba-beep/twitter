import 'package:basic_app/screens/onboarding_screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1DA1F2),
          primary: const Color(0xFF1DA1F2),
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1DA1F2),
          brightness: Brightness.dark,
          surface: const Color(0xFF15202B),
        ),
        scaffoldBackgroundColor: const Color(0xFF15202B),
      ),
      themeMode: ThemeMode.system,
      home: WelcomeScreen(),
    );
  }
}
