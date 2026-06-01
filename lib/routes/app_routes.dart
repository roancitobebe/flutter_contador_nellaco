import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/info_screen.dart';

// este es el mapa oficial de la aplicación
final Map<String, WidgetBuilder> misRutas = {
  '/': (context) => const HomeScreen(),      // el '/' siempre es la pantalla principal
  '/info': (context) => const InfoScreen(),  // la ruta de tu informacion
  
};