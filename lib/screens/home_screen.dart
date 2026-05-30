import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  int valor = 0 ;
  Widget build(BuildContext context) {
    return  Scaffold(appBar:
     AppBar(
  title: 
  Text("BELLAQUIANDO"),
  centerTitle: true,
), 
body: Center(
  child:
   Column(mainAxisAlignment: MainAxisAlignment.center,
   children: [
    const Text("gosalo"),
    Text('$valor', style: const TextStyle(fontSize: 40)),]
) ,)) ;

  }
}