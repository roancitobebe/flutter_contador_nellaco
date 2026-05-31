import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'screens/home_screen.dart';

void main () {runApp(const Myapp() );}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  
  Widget build(BuildContext context) {
    return  MaterialApp(initialRoute: '/', 
      routes: misRutas,);
  }
}