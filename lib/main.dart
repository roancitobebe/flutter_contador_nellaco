import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main () {runApp(const Myapp() );}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen(),);
  }
}