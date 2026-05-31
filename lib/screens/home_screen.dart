import 'package:flutter/material.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int valor = 0 ;
  int autoClickers = 0;
  Timer? relojito;
  int reinicio = 0 ;
  int clicsTotales = 0 ;
  
  
  void initState() {
    super.initState();
    relojito = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (autoClickers > 0) { 
        setState(() {
          valor += autoClickers; });}
    });
  }

 
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
              Navigator.pushNamed(context, '/info' ,arguments: clicsTotales);}) 
  ],
), 
body: Center(
  child:
   Column(mainAxisAlignment: MainAxisAlignment.center,
   children: [
    TextButton(
      onPressed: () {
        setState(() {
        valor++;
        clicsTotales++ ;
        });},
    child: const Text("gosalo toca aqui", style: TextStyle(fontSize: 20)),
    ),
    Text('$valor', style: const TextStyle(fontSize: 40)),
    Text('Auto-clickers: $autoClickers', style: const TextStyle(fontSize: 16, color: Colors.grey)),
    ],
 ),
),

bottomNavigationBar: SafeArea(
child: Padding(
padding: const EdgeInsets.only(bottom: 20.0, top: 10.0),
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

  children : [
    Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text("VENDER" , style: TextStyle(fontWeight: FontWeight.bold ),),
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
      ], ),
    
    // boton reset
    Column(
    mainAxisSize: MainAxisSize.min,
    children: [
    const Text("RESET" , style: TextStyle(fontWeight: FontWeight.bold ),),
    FloatingActionButton(
      heroTag: 'btnReset',
      onPressed: () {
        if (valor >= 100) 
          setState(() {
          valor = 0 ;
          autoClickers = 0;
      });
      } ,
      child: const Icon(Icons.refresh),
    ),
    ],
    ),

    // boton sumat
    Column(
    mainAxisSize: MainAxisSize.min,
    children: [
    const Text("COMPRAR" , style: TextStyle(fontWeight: FontWeight.bold ),),
    FloatingActionButton(
      heroTag: 'btnMas' ,
      onPressed: () {
      if (valor >= 10)
        setState(() {
        valor -= 10 ;
        autoClickers++ ;

        {}
      });
      }, 
      child: const Icon(Icons.add),
    ),
  ],
  ) ,
],
),
),
 ),
); 
}
}