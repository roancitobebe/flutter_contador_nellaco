import 'package:flutter/material.dart';
import 'routes/app_routes.dart';

void main () {runApp(const Myapp() );}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(initialRoute: '/', 
     debugShowCheckedModeBanner: false,
      routes: misRutas,);
  }
}