import 'package:flutter/material.dart';
import 'ui/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final MaterialColor primaryColor = const MaterialColor(
    0xFF000000,
    <int, Color>{
      50: Color(0xFFE8F2E7),
      100: Color(0xFFC5DEC5),
      200: Color(0xFFA1C8A2),
      300: Color(0xFF7DB27F),
      400: Color(0xFF5E9C60),
      500: Color(0xFF5B6F5D),
      600: Color(0xFF4C554E),
      700: Color(0xFF3E463F),
      800: Color(0xFF2F2F30),
      900: Color(0xFF191919),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // useMaterial3: true,
        primarySwatch: primaryColor,
      ),
      home: const HomePage(),
    );
  }
}
