import 'package:flutter/material.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  int valor = 0 ;
  int autoClickers = 0;
  Timer? relojito;
  
  @override
  void initState() {
    super.initState();
    relojito = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (autoClickers > 0) { 
        setState(() {
          valor += autoClickers; });}
    });
  }

  @override
  void dispose() {
    relojito?.cancel(); 
    super.dispose();
  }

  Widget build(BuildContext context) {
    return  Scaffold(appBar:
     AppBar(
  title: 
  Text("BELLAQUIANDO"),
  centerTitle: true,                 // titulo centrado
  actions: [
    IconButton(
            icon: const Icon(Icons.info_outline), // El iconito de información
            onPressed: () {
              Navigator.pushNamed(context, '/info');}) 
  ],
), 
body: Center(
  child:
   Column(mainAxisAlignment: MainAxisAlignment.center,
   children: [
    TextButton(
      onPressed: () {
        setState(() {
        valor++;});},
    child: const Text("gosalo (toca aqui)", style: TextStyle(fontSize: 20)),
    ),
    Text('$valor', style: const TextStyle(fontSize: 40)),
    Text('Auto-clickers: $autoClickers', style: const TextStyle(fontSize: 16, color: Colors.grey)),
    ],
 ),
),

floatingActionButton: Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly ,

  children : [
    // boton restar
    FloatingActionButton(
      heroTag: 'btnMenos',
      onPressed: () {
        if (autoClickers > 0){
        setState(() {
          autoClickers--;
        });
        }
      }, 
      child: const Icon(Icons.remove),
    ),
    
    // boton reset
    FloatingActionButton(
      heroTag: 'btnReset',
      onPressed: () {
        setState(() {
        valor = 0 ;
      autoClickers = 0;
      });}, 
      child: const Icon(Icons.refresh),
    ),

    // boton sumat
    FloatingActionButton(
      heroTag: 'btnMas' ,
      onPressed: () {
      if (valor >= 10)
        setState(() {
        valor -= 10 ;
        autoClickers++ ;
        {}
      });}, 
      child: const Icon(Icons.add),
    ),
]
),
) ;
}
}